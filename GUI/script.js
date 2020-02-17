$('#demo').on('slide.bs.carousel', function onSlide (ev) {
  var id = ev.relatedTarget.id;
  switch (id) {
    case "1":
      $('#myModal.modal-body').html('\
      <a data-flickr-embed="true" title="merged">\
        <img src="image1_1.jpg" width="500"  alt="ZhuojunYingResume Final_page-0001">\
      </a>');
      // do something the id is 1
      break;
    case "2":
      $('#myModal.modal-body').html('\
      <a data-flickr-embed="true" title="merged">\
        <img src="image2_1.jpg" width="500"  alt="ZhuojunYingResume Final_page-0001">\
      </a>');
      // do something the id is 2
      break;
    case "3":
      $('#myModal.modal-body').html('\
      <a data-flickr-embed="true" title="merged">\
        <img src="image3_1.jpg" width="500"  alt="ZhuojunYingResume Final_page-0001">\
      </a>');
      // do something the id is 3
      break;
    default:
      $('#myModal.modal-body').html('\
      <a data-flickr-embed="true" title="merged">\
        <img src="image1_1.jpg" width="500"  alt="ZhuojunYingResume Final_page-0001">\
      </a>');
      //the id is none of the above
  }
})
