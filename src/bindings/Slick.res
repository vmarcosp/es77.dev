@react.component @module("react-slick")
external make: (
  ~dots: bool=?,
  ~infinite: bool=?,
  ~speed: int=?,
  ~slidesToShow: int=?,
  ~slidesToScroll: int=?,
  ~children: React.element=?,
) => React.element = "default"
