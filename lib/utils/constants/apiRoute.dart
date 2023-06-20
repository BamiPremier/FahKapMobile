class ApiRoutes {
  static const POPULAR_ALL = '/produit/read/client';
  static const POPULAR_PRODUCT = '/produit/read/popular';
  static const CATEGORY_PRODUCT = '/category/read';
  static const CATEGORY = '/category/read/all';
  static const BOUTIQUE_FOR_CATEGORY = '/category/read/boutique';
  static const BOUTIQUE_IMAGE_UPDATE = '/boutique/image/new';
  static const BOUTIQUE_NEW = '/boutique/user/new';
  static const BOUTIQUE_FOR_UPDATE = '/boutique/update';
  static const BOUTIQUE_FOR_UPDATE_LOCALISATION = '/boutique/localisation';
  static const BOUTIQUE_FOR_USER = '/boutique/read/user';
  static const BOUTIQUE_READ_ALL = '/boutique/read/all';
  static const BOUTIQUE_READ_COMMANDE = '/commande/boutique/read';
  static const USER_READ_COMMANDE_PRODUIT = '/commande/produit/read/user';
  static const BOUTIQUE_READ_HCOMMANDE = '/commande/boutique/readH';
  static const BOUTIQUE_READ_PRODUIT = '/boutique/read/produit';
  static const UPDATE_USER = '/user/update';
  static const LOCATION_USER = '/user/location';
  static const USER = '/user/get';
  static const LIVREUR = '/livreur/read/ville';
  static const LIVRAISON_POINT = '/point_livraison/read';
  static const BUY = '/commande/newX';
  static const VERIFY = '/commande/verify';
  static const UPDATE_PRODUCT = '/produit/update';

  static const UPDATE_PRODUCT_IMAGE = '/produit/image/update';
  static const ADD_PRODUCT_IMAGE = '/produit/image/add';

  static const NEW_PRODUCT = '/produit/new';
  static const DESABLED_PRODUCT = '/produit/state';
  static const LOGIN = '/api/logins';
  static const Refresh = '/api/token/refresh';
  static const SIGNUP = '/api/user_plateforms';
  static const SEARCH = '/search';
  static const MODEPAIEMENT = '/modepaiement/read';

  static const TRANSACTION_READ = '/transaction/read';
  static const TRANSACTION_RETRAIT = '/transaction/retrait';
  static const TRANSACTION_DEPOT = '/compte/credit';
  static const VERIFY_DEPOT = '/compte/credit/verify';

  static const SHORT_READ = '/short/read';
  static const SHORT_READ_BOUTIQUE = '/short/boutique/read';
  static const SHORT_NEW = '/short/new';
  static const LIKE_PRODUIT = '/like/produit';
  static const NOTAITON_BOUTIQUE = '/notation/boutique';
  static const TEST = '/test/scroll';
  static const NEW_NEGOCIATION = '/negociation/start';
  static const LIST_NEGOCIATION = '/negociation/list';
  static const LIST_MESSAGE_NEGOCIATION = '/negociation/message/list';
  static const NEW_MESSAGE_NEGOCIATION = '/negociation/message/new';

  static const ABONNEMENT = '/abonnement';
  static const ABONNEMENT_BOUTIQUE_USER = '/abonnement/user';
  static const ABONNEMENT_PRODUIT_USER = '/abonnement/produit/read';
  static const ABONNEMENT_BOUTIQUE = '/abonnement/boutique';
} 