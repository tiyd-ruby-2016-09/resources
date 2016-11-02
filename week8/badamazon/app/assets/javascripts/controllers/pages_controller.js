badamazonApp.controller('PagesController', ['$scope', 'products', function PagesController($scope, products) {

  $scope.displayCategory = function(categoryId, categoryName) {
    console.log(categoryId, categoryName)
  };

  $scope.loadProducts = function() {
    products.getProducts().then(function(response) {
      $scope.products = response.data;
    });
  };

}]);
