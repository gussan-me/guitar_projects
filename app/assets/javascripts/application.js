// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

'use strict';

{
const $open=document.getElementById('open');
const $close=document.getElementById('close');
const $modal=document.getElementById('modal');
const $mask=document.getElementById('mask');
const $submit=document.getElementById('submit');
    
$open.addEventListener('click', () => {
    $modal.classList.remove('hidden');
    $mask.classList.remove('hidden');
});

$close.addEventListener('click', () => {
    $modal.classList.add('hidden');
    $mask.classList.add('hidden');
});

$mask.addEventListener('click', () => {
    $close.click();
});

$submit.addEventListener('click', () => {
    if(document.getElementById('js-name').value==''){
        document.getElementById('js-name-error').classList.remove('hidden');
    }
});
$submit.addEventListener('click', () => {
    if(document.getElementById('js-title').value==''){
        document.getElementById('js-title-error').classList.remove('hidden');
    }
});
$submit.addEventListener('click', () => {
    if(document.getElementById('js-content').value==''){
        document.getElementById('js-content-error').classList.remove('hidden');
    }
});

  }
