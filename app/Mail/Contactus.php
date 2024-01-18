<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class Contactus extends Mailable
{
    use Queueable, SerializesModels;

    public $data;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($data)
    {
        $this->data = $data;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build(){
        $website_data = (Object) get_widget_data('title', 'General Settings', 'title', 'Social Links');
        return $this->to($this->data->email_address,$this->data->first_name.' '.$this->data->last_name)
            ->subject('Contact Us Request | '.str_replace("_"," ",ucfirst($website_data->website_name)))
            // ->bcc('hodumarketingsolutions@gmail.com','HODU Marketing Solutions Pvt. Ltd.')
            ->view('email_temps.contactus')
            ->with('data',$this->data); 
    }
}
