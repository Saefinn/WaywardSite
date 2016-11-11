// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).on('page:change', function(){
    $(".journal").hover(function(){
        //$(this).css("background-color", "rgba(255,255,255,0.5");
    },
    function(){
        //$(this).css("background-color", "white");
    });
    
    
    
});


mySettings = {
  nameSpace:          "bbcode", // Useful to prevent multi-instances CSS conflict
  previewParserPath:  "~/sets/bbcode/preview.php",
  markupSet: [
      {name:'B', key:'B', openWith:'[b]', closeWith:'[/b]'}, 
      {name:'I', key:'I', openWith:'[i]', closeWith:'[/i]'}, 
      {name:'U', key:'U', openWith:'[u]', closeWith:'[/u]'},
      {name:'Del', openWith:'[del]', closeWith:'[/del]'},
      {name:'Insert', openWith:'[ins]', closeWith:'[/ins]'}, 
      {separator: ' | '},
      {name:'Picture', key:'P', replaceWith:'[img][![Url]!][/img]'},
      {name:'YouTube', openWith:'[youtube]', closeWith:'[/youtube]'}, 
      {name:'Link', key:'L', openWith:'[url=[![Url]!]]', closeWith:'[/url]', placeHolder:'Your text to link here...'},
      {separator: ' | Text Size: '},
      {name:'Big', openWith:'[size=48]', closeWith:'[/size]' },
	  {name:'Medium', openWith:'[size=20]', closeWith:'[/size]' },
      {name:'Small', openWith:'[size=10]', closeWith:'[/size]' },
      {separator: ' | '},
      {name:'Bulleted list', openWith:'[ul]\n', closeWith:'\n[/ul]'}, 
      {name:'Numeric list', openWith:'[ol]]\n', closeWith:'\n[/ol]'}, 
      {name:'List item', openWith:'[li] ', closeWith: '[/li]'}, 
      {separator: ' | '},
      {name:'Quotes', openWith:'[quote]', closeWith:'[/quote]'}, 
      {name:'Code', openWith:'[code]', closeWith:'[/code]'}, 
      {separator:' | ' },
      {name:'Clean', className:"clean", replaceWith:function(h) { return h.selection.replace(/\[(.*?)\]/g, "") } },
      
   ]
}
$(document).on('page:change', function() {
   $("textarea").markItUp(mySettings);
});