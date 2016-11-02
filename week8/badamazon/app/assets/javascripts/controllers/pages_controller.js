badamazonApp.controller('PagesController', function PagesController($scope) {

  $scope.displayCategory = function(categoryId, categoryName) {
    console.log(categoryId, categoryName)
  };

  $scope.products = [{
    id: 1,
    name: 'bike'
  }, {
    id: 2,
    name: 'lamp'
  }, {
    id: 3,
    name: 'book'
  }, {
    id: 4,
    name: 'dog'
  }];

});
