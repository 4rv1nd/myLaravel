<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use App\Mail\Contact_client;
use App\Mail\Contactus;
use Illuminate\Http\Request;
use App\Models\Contact_us;
use App\Models\Modules;
use App\Models\ModulesData;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Request as FacadesRequest;
use stdClass;

class ContactusController extends Controller
{
    public function index(){
        $cms = ModulesData::where('slug','contact-us')->where('status','active')->firstOrFail();
        // return view('ajanta.contact', compact('cms'));

        // $cms = Modules::where('slug','modules-seo-management')->get()->first();
        // $cms = ModulesData::where('module_id',$cms->id)->where('title','Contact-us')->where('status','active')->get()->first();
        if(!$cms){
            $cms = new stdClass();
            $cms->meta_description = "";
            $cms->image = "";
            $cms->keyword = "";
            $cms->meta_title = "";
        }
        return view('contact_us',compact('cms'));
    }

    public function store(Request $request){
        
        $this->validate($request, [
            'first_name' => 'required',
            'email' => 'required',
            'phone' => 'required',
            'message' => 'required',
            'subject' => 'required',
        ], [
            'first_name.required' => 'First Name is required.',
            'email_address.required' => 'Email Address is required.',
            'phone_number.required' => 'Phone Number is required.',
            'message.required' => 'Message is required.',
            'subject.required' => 'Subject is required.',
        ]);

        $contact = new Contact_us();
        $contact->first_name = $request->first_name;
        $contact->last_name = $request->last_name;
        $contact->email_address = $request->email;
        $contact->phone_number = $request->phone;
        $contact->message = $request->message;
        $contact->save();

        $contact->subject = $request->subject;
        Mail::send(new Contactus($contact));
        echo json_encode(['success'=>'1','message'=>'Your form is successfully submitted']); exit;
        
        // $request->session()->flash('message.added', 'success');
        // $request->session()->flash('message.content', 'Your form is successfully submitted');
        // return redirect()->back();
    }  
    public function request(Request $request){
        
        $this->validate($request, [
            'subject'=>'required',
            'name'=>'required',
            'company'=>'required',
            'email'=>'required',
            'phone'=>'required',
            'address'=>'required',
            'message'=>'required'
        ], [
            'subject.required'=>'Subject is Required',
            'name.required'=>'Name is Required',
            'company.required'=>'Company is Required',
            'email.required'=>'Email is Required',
            'phone.required'=>'Phone is Required',
            'address.required'=>'Address is Required',
            'message.required'=>'Message is Required'
        ]);

        $contact = new Contact_us();
        $contact->first_name = $request->name;
        $contact->last_name = "";
        $contact->company = $request->company;
        $contact->email_address = $request->email;
        $contact->phone_number = $request->phone;
        $contact->address = $request->address;
        $contact->message = $request->message;
        $contact->save();

        $contact->subject = $request->subject;
        Mail::send(new Contactus($contact));
        echo json_encode(['success'=>'1','message'=>'Your form is successfully submitted']); exit;
    }  
}
