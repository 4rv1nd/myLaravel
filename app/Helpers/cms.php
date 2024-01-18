<?php

use App\User;
use App\Models\Menu;
use App\Models\Widgets;
use App\Models\WidgetsData;
use App\Models\ModulesData;
use App\Models\Contact_us;
use App\Models\Modules;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;
use Nette\Utils\Arrays;
use Stripe\Order;

function crop_image($src, $dst, $data) {
    if (!empty($src) && !empty($dst) && !empty($data)) {
        $type = exif_imagetype($src);
        switch ($type) {
          case IMAGETYPE_GIF:
            $src_img = imagecreatefromgif($src);
            break;

          case IMAGETYPE_JPEG:
            $src_img = imagecreatefromjpeg($src);
            break;

          case IMAGETYPE_PNG:
            $src_img = imagecreatefrompng($src);
            break;
        }

        if (!$src_img) {
            $this -> msg = "Failed to read the image file";
            return;
        }

        $size = getimagesize($src);
        $size_w = $size[0]; // natural width
        $size_h = $size[1]; // natural height

        $src_img_w = $size_w;
        $src_img_h = $size_h;

        $degrees = $data['rotate'];

        // Rotate the source image
        if (is_numeric($degrees) && $degrees != 0) {
            // PHP's degrees is opposite to CSS's degrees
            $new_img = imagerotate( $src_img, -$degrees, imagecolorallocatealpha($src_img, 0, 0, 0, 127) );

            imagedestroy($src_img);
            $src_img = $new_img;

            $deg = abs($degrees) % 180;
            $arc = ($deg > 90 ? (180 - $deg) : $deg) * M_PI / 180;

            $src_img_w = $size_w * cos($arc) + $size_h * sin($arc);
            $src_img_h = $size_w * sin($arc) + $size_h * cos($arc);

            // Fix rotated image miss 1px issue when degrees < 0
            $src_img_w -= 1;
            $src_img_h -= 1;
        }

        $tmp_img_w = $data['width'];
        $tmp_img_h = $data['height'];
        $dst_img_w = 262;
        $dst_img_h = 311;

        $src_x = $data['x'];
        $src_y = $data['y'];

        if ($src_x <= -$tmp_img_w || $src_x > $src_img_w) {
            $src_x = $src_w = $dst_x = $dst_w = 0;
        } else if ($src_x <= 0) {
            $dst_x = -$src_x;
            $src_x = 0;
            $src_w = $dst_w = min($src_img_w, $tmp_img_w + $src_x);
        } else if ($src_x <= $src_img_w) {
            $dst_x = 0;
            $src_w = $dst_w = min($tmp_img_w, $src_img_w - $src_x);
        }

        if ($src_w <= 0 || $src_y <= -$tmp_img_h || $src_y > $src_img_h) {
            $src_y = $src_h = $dst_y = $dst_h = 0;
        } else if ($src_y <= 0) {
            $dst_y = -$src_y;
            $src_y = 0;
            $src_h = $dst_h = min($src_img_h, $tmp_img_h + $src_y);
        } else if ($src_y <= $src_img_h) {
            $dst_y = 0;
            $src_h = $dst_h = min($tmp_img_h, $src_img_h - $src_y);
        }

        // Scale to destination position and size
        $ratio = $tmp_img_w / $dst_img_w;
        $dst_x /= $ratio;
        $dst_y /= $ratio;
        $dst_w /= $ratio;
        $dst_h /= $ratio;

        $dst_img = imagecreatetruecolor($dst_img_w, $dst_img_h);

        // Add transparent background to destination image
        imagefill($dst_img, 0, 0, imagecolorallocatealpha($dst_img, 0, 0, 0, 127));
        imagesavealpha($dst_img, true);

        $result = imagecopyresampled($dst_img, $src_img, $dst_x, $dst_y, $src_x, $src_y, $dst_w, $dst_h, $src_w, $src_h);

        if ($result) {
            if (!imagepng($dst_img, $dst)) {
                $this -> msg = "Failed to save the cropped image file";
            }
        } else {
            $this -> msg = "Failed to crop the image file";
        }

        imagedestroy($src_img);
        imagedestroy($dst_img);
    }
  }
  function crop_coupon_image($src, $dst, $data) {
    if (!empty($src) && !empty($dst) && !empty($data)) {
        $type = exif_imagetype($src);
        switch ($type) {
          case IMAGETYPE_GIF:
            $src_img = imagecreatefromgif($src);
            break;

          case IMAGETYPE_JPEG:
            $src_img = imagecreatefromjpeg($src);
            break;

          case IMAGETYPE_PNG:
            $src_img = imagecreatefrompng($src);
            break;
        }

        if (!$src_img) {
            $this -> msg = "Failed to read the image file";
            return;
        }

        $size = getimagesize($src);
        $size_w = $size[0]; // natural width
        $size_h = $size[1]; // natural height

        $src_img_w = $size_w;
        $src_img_h = $size_h;

        $degrees = $data['rotate'];

        // Rotate the source image
        if (is_numeric($degrees) && $degrees != 0) {
            // PHP's degrees is opposite to CSS's degrees
            $new_img = imagerotate( $src_img, -$degrees, imagecolorallocatealpha($src_img, 0, 0, 0, 127) );

            imagedestroy($src_img);
            $src_img = $new_img;

            $deg = abs($degrees) % 180;
            $arc = ($deg > 90 ? (180 - $deg) : $deg) * M_PI / 180;

            $src_img_w = $size_w * cos($arc) + $size_h * sin($arc);
            $src_img_h = $size_w * sin($arc) + $size_h * cos($arc);

            // Fix rotated image miss 1px issue when degrees < 0
            $src_img_w -= 1;
            $src_img_h -= 1;
        }

        $tmp_img_w = $data['width'];
        $tmp_img_h = $data['height'];
        $dst_img_w = 470;
        $dst_img_h = 402;

        $src_x = $data['x'];
        $src_y = $data['y'];

        if ($src_x <= -$tmp_img_w || $src_x > $src_img_w) {
            $src_x = $src_w = $dst_x = $dst_w = 0;
        } else if ($src_x <= 0) {
            $dst_x = -$src_x;
            $src_x = 0;
            $src_w = $dst_w = min($src_img_w, $tmp_img_w + $src_x);
        } else if ($src_x <= $src_img_w) {
            $dst_x = 0;
            $src_w = $dst_w = min($tmp_img_w, $src_img_w - $src_x);
        }

        if ($src_w <= 0 || $src_y <= -$tmp_img_h || $src_y > $src_img_h) {
            $src_y = $src_h = $dst_y = $dst_h = 0;
        } else if ($src_y <= 0) {
            $dst_y = -$src_y;
            $src_y = 0;
            $src_h = $dst_h = min($src_img_h, $tmp_img_h + $src_y);
        } else if ($src_y <= $src_img_h) {
            $dst_y = 0;
            $src_h = $dst_h = min($tmp_img_h, $src_img_h - $src_y);
        }

        // Scale to destination position and size
        $ratio = $tmp_img_w / $dst_img_w;
        $dst_x /= $ratio;
        $dst_y /= $ratio;
        $dst_w /= $ratio;
        $dst_h /= $ratio;

        $dst_img = imagecreatetruecolor($dst_img_w, $dst_img_h);

        // Add transparent background to destination image
        imagefill($dst_img, 0, 0, imagecolorallocatealpha($dst_img, 0, 0, 0, 127));
        imagesavealpha($dst_img, true);

        $result = imagecopyresampled($dst_img, $src_img, $dst_x, $dst_y, $src_x, $src_y, $dst_w, $dst_h, $src_w, $src_h);

        if ($result) {
            if (!imagepng($dst_img, $dst)) {
                $this -> msg = "Failed to save the cropped image file";
            }
        } else {
            $this -> msg = "Failed to crop the image file";
        }

        imagedestroy($src_img);
        imagedestroy($dst_img);
    }
  }


    function displayImage($dir,$file){
        $parentparentdir=dirname(dirname(dirname(dirname(__FILE__))));
        
        if($file==''){ return $dir.'no_image.jpg';}
        if(file_exists($parentparentdir. DIRECTORY_SEPARATOR.'user-picture/home/'.$file)){return $dir.$file;}else{return $dir.'no_image.jpg';}
        
    }


if (! function_exists('widget')) {
    /**
     * Assign high numeric IDs to a config item to force appending.
     *
     * @param  array  $array
     * @return array
     */
    function widget($id)
    {
        $widget = Widgets::findorFail($id);
        $array = $widget->widget_data;
        return $array;
    }
} 

if (! function_exists('dataArray')) {
    /**
     * Assign high numeric IDs to a config item to force appending.
     *
     * @param  array  $array
     * @return array
     */
    function dataArray($id)
    {
        $array = ModulesData::select('title', 'id')->where('module_id',$id)->where('status','active')->pluck('title', 'id')->toArray();
        return $array;
    }
} 

if (! function_exists('widgetPage')) {
    /**
     * Assign high numeric IDs to a config item to force appending.
     *
     * @param  array  $array
     * @return array
     */
    function widgetPage($id)
    {
        $widget = Widgets::findorFail($id);
        $array = $widget->page; 
        return $array;
    }
}  
if (! function_exists('dropdown')) {
    /**
     * Assign high numeric IDs to a config item to force appending.
     *
     * @param  array  $array
     * @return array
     */
    function dropdown($id)
    {
        $array = ModulesData::select('title', 'id')->where('module_id',$id)->where('status','active')->pluck('title', 'id')->toArray(); 
        return $array;
    }
} 
if (! function_exists('module')) {
    /**
     * Assign high numeric IDs to a config item to force appending.
     *
     * @param  array  $array
     * @return array
     */
    function module($id,$paginate='')
    {
      if($paginate !== ''){
        $array = ModulesData::where('module_id',$id)->where('status','active')->paginate($paginate);
      }else{
        $array = ModulesData::where('module_id',$id)->where('status','active')->get();
      }
        
        return $array;
    }
}   

if (! function_exists('moduleSlug')) {
    /**
     * Assign high numeric IDs to a config item to force appending.
     *
     * @param  array  $array
     * @return array
     */
    function moduleSlug($id)
    {
      	$array = Modules::findorFail($id);  
        
        return $array;
    }
}   


if (! function_exists('setting')) {
    /**
     * Assign high numeric IDs to a config item to force appending.
     *
     * @param  array  $array
     * @return array
     */
    function setting()
    {
        $array = DB::table('settings')->first(); 
        return $array;
    }
}   


if (! function_exists('services')) {
    /**
     * Assign high numeric IDs to a config item to force appending.
     *
     * @param  array  $array
     * @return array
     */
    function services()
    {
        $array = Modules_data::where('modules_id', 2)->where('status','active')->take(8)->get(); 
        return $array;
    }
}   

if (! function_exists('unique_slug')) {
    /**
     * Assign high numeric IDs to a config item to force appending.
     *
     * @param  array  $array
     * @return array
     */
    function unique_slug($string,$table,$field='slug',$key=NULL,$value=NULL)
    {
            $slug = url_title($string);
            $slug = strtolower($slug);
            $i = 0;
            $params = array ();
            $params[$field] = $slug;

            if($key)$params["$key !="] = $value;

            while (DB::table($table)->where('slug',$params)->first())
            {  
                if (!preg_match ('/-{1}[0-9]+$/', $slug ))
                    $slug .= '-' . ++$i;
                else
                    $slug = preg_replace ('/[0-9]+$/', ++$i, $slug );

                $params[$field] = $slug;
            }  
            return $slug;  
    }
}
if (! function_exists('title')) {
    /**
     * Assign high numeric IDs to a config item to force appending.
     *
     * @param  array  $array
     * @return array
     */
    function title($id)
    {
        $array = ModulesData::select('title')->where('id',$id)->where('status','active')->first();
        //dd($array);
        $title = null;
        if(null!==($array)){
          $title = $array->title;
        }
        
        return $title;
    }
}  

if (! function_exists('url_title')) {
    /**
     * Assign high numeric IDs to a config item to force appending.
     *
     * @param  array  $array
     * @return array
     */
    function url_title($str, $separator = '-', $lowercase = FALSE)
    {
            if ($separator === 'dash')
        {
            $separator = '-';
        }
        elseif ($separator === 'underscore')
        {
            $separator = '_';
        }

        $q_separator = preg_quote($separator, '#');

        $trans = array(
            '&.+?;'         => '',
            '[^a-z0-9 _-]'      => '',
            '\s+'           => $separator,
            '('.$q_separator.')+'   => $separator
        );

        $str = strip_tags($str);
        foreach ($trans as $key => $val)
        {
            $str = preg_replace('#'.$key.'#i', $val, $str);
        }

        if ($lowercase === TRUE)
        {
            $str = strtolower($str);
        }

        return trim(trim($str, $separator));
    }
} 


if (! function_exists('get_menus')) {
    /**
     * Assign high numeric IDs to a config item to force appending.
     *
     * @param  array  $array
     * @return array
     */
    function get_menus($id)
    {
        $manues = '';
        $classli='';
        $spancart='';
        $nav_link = '';
        if($id==1){
          $nav_link = 'nav-link';
        }
        $parent_menus = Menu::where('parent_id',0)->where('menu_type_id',$id)->orderBy('order', 'ASC')->get();
        foreach($parent_menus as $menu){
            // if($menu->ModulesData())
            if (is_child($menu->id) == TRUE) {
                $classli='class="dropdown dropnav"';
                $spancart='<i class="fas fa-caret-down"></i>';
            }
            else{
                $classli='class="nav-item"';
                $spancart='';
            }
            if($menu->menu_is=='internal'){
                $menu_url=url('/').'/'.$menu->slug;
            }else{
                $menu_url=$menu->slug;
            }
          $manues.='<li '.$classli.'>';
          $manues.='<a href="'.$menu_url.'" class="'.$nav_link.'">'.$menu->title.''.$spancart.'</a>';
          if (is_child($menu->id) == TRUE) {
              $manues.='<ul class="dropdown-menu">';
              if(null!==($menu->submenus)){
                foreach($menu->submenus as $submenu){

                    if($submenu->menu_is=='internal'){
                        $submenu_url=url('/').'/'.$submenu->slug;
                    }else{
                        $submenu_url=$submenu->slug;
                    }
                    
                    $spancartsubsub= (is_child($submenu->id) == TRUE)? '<i class="fas fa-caret-down"></i>':'';
                    
                    $manues.='<li>';
                    $manues.='<a href="'.$submenu_url.'" class="'.$nav_link.'">'.$submenu->title.$spancartsubsub.'</a>';
                   
                    if (is_child($submenu->id) == TRUE) {
                        
                        if(null !== ($submenu->submenus)){
                            $manues.='<ul class="dropdown-menu">';
                            foreach($submenu->submenus as $subsubmenu){
                                if($subsubmenu->menu_is=='internal'){
                                    $subsubmenu_url=url('/').'/'.$subsubmenu->slug;
                                }else{
                                    $subsubmenu_url=$subsubmenu->slug;
                                }
                                $manues.='<li>';
                                $manues.='<a href="'.$subsubmenu_url.'" class="'.$nav_link.'">'.$subsubmenu->title.'</a>';
                                $manues.='</li>';
                            }
                            $manues.='</ul>'; 
                        }
                    }
                    
                    $manues.='</li>';
                }
              }
              
              $manues.='</ul>'; 
          }
         $manues.='</li>';
        }
        return $manues;
    }
}


if (! function_exists('get_footer_menus')) {
    /**
     * Assign high numeric IDs to a config item to force appending.
     *
     * @param  array  $array
     * @return array
     */
    function get_footer_menus()
    {
        $manues = '';
        $classli='';
        $spancart='';
        $parent_menus = Menu::where('parent_id',0)->where('footer',1)->orderBy('order', 'asc')->get();

        foreach($parent_menus as $menu){
             if (is_child($menu->id) == TRUE) {
                $classli='class="dropdown dropnav"';
                $spancart='<i class="fas fa-caret-down"></i>';
            }
            else{
                $classli='class="nav-item"';
                $spancart='';
            }
            if($menu->is_external=='Y'){
                $menu_url=url('/').'/'.$menu->url;
            }else{
                $menu_url=$menu->url;
            }
          $manues.='<li>';
          $manues.='<a href="'.$menu_url.'">'.$menu->title.''.$spancart.'</a>';
          if (is_child($menu->id) == TRUE) {
              $manues.='<ul class="dropdown-menu">';
              if(null!==($menu->submenus)){
                foreach($menu->submenus as $submenu){
                  if($submenu->is_external=='N'){
                        $submenu_url=url('/').'/'.$submenu->url;
                    }else{
                        $submenu_url=$submenu->url;
                    }
                   $manues.='<li>';
                   $manues.='<a href="'.$submenu_url.'" class="nav-link">'.$submenu->title.'</a>';
                   $manues.='</li>';
                }
              }
              
              $manues.='</ul>'; 
          }
         $manues.='</li>';
        }         

        return $manues;
    }
}

if (! function_exists('is_child')) {
    /**
     * Assign high numeric IDs to a config item to force appending.
     *
     * @param  array  $array
     * @return array
     */
    function is_child($id)
    {
        $child_menus = Menu::where('parent_id',$id)->first();
        if ($child_menus) {
            return TRUE;
        } else {
            return FALSE;
        }
    }


    if (! function_exists('messages_count')) {
    /**
     * Assign high numeric IDs to a config item to force appending.
     *
     * @param  array  $array
     * @return array
     */
    function messages_count()
    {
        return Contact_us::where('status','unseen')->count();
    }
}


if (! function_exists('messages')) {
    /**
     * Assign high numeric IDs to a config item to force appending.
     *
     * @param  array  $array
     * @return array
     */
    function messages()
    {
        return Contact_us::where('status','unseen')->orderBy('id','asc')->take(5)->get();
    }
}
}

if (! function_exists('get_nav')) {
    function get_nav($parent = 0){
        // foreach(Menu::where(['parent_id'=>$parent,'menu_type_id'=>1])->OrderBy('order')->with('ModulesData')->with('menu_type')->get() as $menue){
        //     dump($menue);
        // }
        // dd("Done");
        return Menu::where(['parent_id'=>$parent,'menu_type_id'=>1])->OrderBy('order')->with('ModulesData')->with('menu_type')->get();
    }
}

if (! function_exists('get_widget_data')) {
    function get_widget_data($field_1 =null, $data_1 = null ,$field_2 =null, $data_2 = null){
        $array = [];
        // firstOrFail();
        $widget = Widgets::where($field_1, $data_1)->get()->first();

        if($widget){
            $count = $widget->extra_fields;
            while($count!=0){
                $array[str_replace(" ","_",strtolower($widget['extra_field_title_'.$count]))] = $widget->widget_data['extra_field_'.$count];
                $count--;
            }
            if($widget->is_extra_image_title_1){
                $array[str_replace(" ","_",strtolower($widget['extra_image_title_1']))] = $widget->widget_data['extra_image_1'];
            }
            if($widget->is_extra_image_title_2){
                $array[str_replace(" ","_",strtolower($widget['extra_image_title_2']))] = $widget->widget_data['extra_image_2'];
            }
            if($widget->is_description){
                $array['widget_1_description'] = $widget->widget_data['description'];
            }
        }

        // if we have 2 widgets for merge
        if( ($field_2 != null) && ($data_2 != null) ){
            $widget = Widgets::where($field_2, $data_2)->get()->first();
            if($widget){
                $count = $widget->extra_fields;
                while($count!=0){
                    $array[str_replace(" ","_",strtolower($widget['extra_field_title_'.$count]))] = $widget->widget_data['extra_field_'.$count];
                    $count--;
                }
                if($widget->is_extra_image_title_1){
                    $array[str_replace(" ","_",strtolower($widget['extra_image_title_1']))] = $widget->widget_data['extra_image_1'];
                }
                if($widget->is_extra_image_title_2){
                    $array[str_replace(" ","_",strtolower($widget['extra_image_title_2']))] = $widget->widget_data['extra_image_2'];
                }
                if($widget->is_description){
                    $array['widget_2_description'] = $widget->widget_data['description'];
                }
            }
        }
        return $array;
    }
}
if (! function_exists('get_widget')) {
    function get_widget($field = null, $data = null){
        return Widgets::where($field, $data)->with('widget_data')->get()->first();
    }
}

// if (! function_exists('get_widget_data')) {
//     function get_widget_data($field = null, $data = null){
//         $array = [];
//         $widget = Widgets::where($field, $data)->get()->first();
//         $count = $widget->extra_fields;
//         while($count!=0){
//             $array[str_replace(" ","_",strtolower($widget['extra_field_title_'.$count]))] = $widget->widget_data['extra_field_'.$count];
//             $count--;
//         }
//         if($widget->is_extra_image_title_1){
//             $array[str_replace(" ","_",strtolower($widget['extra_image_title_1']))] = $widget->widget_data['extra_image_1'];
//         }
//         if($widget->is_extra_image_title_2){
//             $array[str_replace(" ","_",strtolower($widget['extra_image_title_2']))] = $widget->widget_data['extra_image_2'];
//         }
//         if($widget->is_description){
//             $array['description'] = $widget->widget_data['description'];
//         }
//     }
// }
if (! function_exists('get_module')) {
    function get_module($field =null, $data = null, $is_sort = false){
        if($is_sort==true){
            // echo '-------- A --------';
            return Modules::where($field, $data)->with(['modules_data'  => 
                function ($query) {
                    return $query->select('modules_data.*')->orderBy('modules_data.sort_id');
                },
            ])->get()->first();
        }
        else{
            return Modules::where($field, $data)->with('modules_data')->get()->first();
        }
    }
}

if (! function_exists('get_page')) {
    function get_page(Array $where){
        return ModulesData::where($where)->get()->first();
    }
}
if (! function_exists('get_cat')) {
    function get_cat($id = null){
        return ModulesData::find($id);
        // return Modules::find($id)->with('modules_data');
    }
}

// if (! function_exists('get_tag')) {
//     function get_tag($data = null){
//         return Modules::find($data)->get()->first();
//     }
// }
// count_cat_blogs