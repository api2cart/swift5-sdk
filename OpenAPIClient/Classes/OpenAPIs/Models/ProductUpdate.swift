//
// ProductUpdate.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ProductUpdate: Codable, JSONEncodable, Hashable {

    /** Defines product id that has to be updated */
    public var id: String?
    /** Defines product model that has to be updated */
    public var model: String?
    /** Defines product's old price */
    public var oldPrice: Double?
    /** Defines new product's price */
    public var price: Double?
    /** Defines new product's special price */
    public var specialPrice: Double?
    /** Defines the date of special price creation */
    public var spriceCreate: String?
    /** Defines the term of special price offer duration */
    public var spriceExpire: String?
    /** Defines new product's cost price */
    public var costPrice: Double?
    /** Specifies product's fixed cost shipping price */
    public var fixedCostShippingPrice: Double?
    /** Defines new product's retail price */
    public var retailPrice: Double?
    /** Defines new product's quantity */
    public var quantity: Double?
    /** Specifies the set of visible/invisible products for users */
    public var availableForView: Bool?
    /** Weight */
    public var weight: Double?
    /** Weight Unit */
    public var weightUnit: String?
    /** Weight Unit */
    public var dimensionsUnit: String?
    /** Defines the incremental changes in product quantity */
    public var increaseQuantity: Double?
    /** Defines the decrement changes in product quantity */
    public var reduceQuantity: Double?
    /** This parameter is used for selecting a warehouse where you need to set/modify a product quantity. */
    public var warehouseId: String?
    /** This parameter allows to reserve/unreserve product quantity. */
    public var reserveQuantity: Double?
    /** Defines inventory tracking for product */
    public var manageStock: Bool?
    /** Set backorder status */
    public var backorderStatus: String?
    /** Defines product's name that has to be updated */
    public var name: String?
    /** Defines new product's sku */
    public var sku: String?
    /** Set visibility status */
    public var visible: String?
    /** Defines product's manufacturer */
    public var manufacturer: String?
    /** Defines product's manufacturer by manufacturer_id */
    public var manufacturerId: String?
    /** Defines product add that is specified by comma-separated categories id */
    public var categoriesIds: String?
    /** Defines product related products ids that has to be updated */
    public var relatedProductsIds: String?
    /** Defines product up-sell products ids that has to be updated */
    public var upSellProductsIds: String?
    /** Defines product cross-sells products ids that has to be updated */
    public var crossSellProductsIds: String?
    /** Defines new product's description */
    public var description: String?
    /** Defines short description */
    public var shortDescription: String?
    /** Defines unique meta title for each entity */
    public var metaTitle: String?
    /** Defines unique meta keywords for each entity */
    public var metaKeywords: String?
    /** Defines unique meta description of a entity */
    public var metaDescription: String?
    /** Defines store id where the product should be found */
    public var storeId: String?
    /** Language id */
    public var langId: String?
    /** Set stock status */
    public var inStock: Bool?
    /** Defines product's status */
    public var status: String?
    /** Defines unique URL for SEO */
    public var seoUrl: String?
    /** Report request id */
    public var reportRequestId: String?
    /** Disable report cache for current request */
    public var disableReportCache: Bool? = false
    /** Is reindex required */
    public var reindex: Bool? = true
    /** Product tags */
    public var tags: String?
    /** Is cache clear required */
    public var clearCache: Bool? = true
    /** Global Trade Item Number. An GTIN is an identifier for trade items. */
    public var gtin: String?
    /** Universal Product Code. A UPC (UPC-A) is a commonly used identifer for many different products. */
    public var upc: String?
    /** Manufacturer Part Number. A MPN is an identifier of a particular part design or material used. */
    public var mpn: String?
    /** European Article Number. An EAN is a unique 8 or 13-digit identifier that many industries (such as book publishers) use to identify products. */
    public var ean: String?
    /** International Standard Book Number. An ISBN is a unique identifier for books. */
    public var isbn: String?
    /** Specifies whether a tax is charged */
    public var taxable: Bool? = true
    /** A categorization for the product */
    public var productClass: String?
    /** Defines product's height */
    public var height: Double?
    /** Defines product's length */
    public var length: Double?
    /** Defines product's width */
    public var width: Double?
    /** Harmonized System Code. An HSC is a 6-digit identifier that allows participating countries to classify traded goods on a common basis for customs purposes */
    public var harmonizedSystemCode: String?
    /** The country where the inventory item was made */
    public var countryOfOrigin: String?
    /** Defines unique search keywords */
    public var searchKeywords: String?
    /** A barcode is a unique code composed of numbers used as a product identifier. */
    public var barcode: String?
    /** Defines whether the product is virtual */
    public var isVirtual: Bool? = false
    /** Specifies product free shipping flag that has to be updated */
    public var isFreeShipping: Bool?
    /** Defines reserve price value */
    public var reservePrice: Double?
    /** Defines buy it now value */
    public var buyitnowPrice: Double?
    /** Allows to schedule a time in the future that the item becomes available. The value should be greater than the current date and time. */
    public var availFrom: String?
    /** Defines tax classes where entity has to be added */
    public var taxClassId: String?
    /** Defines product's type */
    public var type: String?
    /** Defines category's visibility status */
    public var avail: Bool? = true
    /** The delivery promise that applies to offer */
    public var deliveryCode: String?
    /** Disable or enable check process status. Please note that the response will be slower due to additional requests to the store. */
    public var checkProcessStatus: Bool? = false
    public var packageDetails: ProductAddPackageDetails?
    /** Assign product to the stores that is specified by comma-separated stores' id */
    public var storesIds: String?
    public var manufacturerInfo: ProductAddManufacturerInfo?
    /** Defines product production partner ids that has to be updated */
    public var productionPartnerIds: String?
    /** The numeric ID of the shipping template associated with the products in Etsy. You can find possible values in the \"cart.info\" API method response, in the field shipping_zones[]->id. */
    public var shippingTemplateId: Int? = 0
    /** An enumerated string for the era in which the maker made the product. */
    public var whenMade: String? = "made_to_order"
    /** If true, it indicates the product as a supply, otherwise it indicates that it is a finished product. */
    public var isSupply: Bool? = true
    /** Defines whether the product is downloadable */
    public var downloadable: Bool? = false
    /** A list of material strings for materials used in the product. */
    public var materials: [String]?
    /** When true, automatically renews a listing upon its expiration. */
    public var autoRenew: Bool? = false

    public init(id: String? = nil, model: String? = nil, oldPrice: Double? = nil, price: Double? = nil, specialPrice: Double? = nil, spriceCreate: String? = nil, spriceExpire: String? = nil, costPrice: Double? = nil, fixedCostShippingPrice: Double? = nil, retailPrice: Double? = nil, quantity: Double? = nil, availableForView: Bool? = nil, weight: Double? = nil, weightUnit: String? = nil, dimensionsUnit: String? = nil, increaseQuantity: Double? = nil, reduceQuantity: Double? = nil, warehouseId: String? = nil, reserveQuantity: Double? = nil, manageStock: Bool? = nil, backorderStatus: String? = nil, name: String? = nil, sku: String? = nil, visible: String? = nil, manufacturer: String? = nil, manufacturerId: String? = nil, categoriesIds: String? = nil, relatedProductsIds: String? = nil, upSellProductsIds: String? = nil, crossSellProductsIds: String? = nil, description: String? = nil, shortDescription: String? = nil, metaTitle: String? = nil, metaKeywords: String? = nil, metaDescription: String? = nil, storeId: String? = nil, langId: String? = nil, inStock: Bool? = nil, status: String? = nil, seoUrl: String? = nil, reportRequestId: String? = nil, disableReportCache: Bool? = false, reindex: Bool? = true, tags: String? = nil, clearCache: Bool? = true, gtin: String? = nil, upc: String? = nil, mpn: String? = nil, ean: String? = nil, isbn: String? = nil, taxable: Bool? = true, productClass: String? = nil, height: Double? = nil, length: Double? = nil, width: Double? = nil, harmonizedSystemCode: String? = nil, countryOfOrigin: String? = nil, searchKeywords: String? = nil, barcode: String? = nil, isVirtual: Bool? = false, isFreeShipping: Bool? = nil, reservePrice: Double? = nil, buyitnowPrice: Double? = nil, availFrom: String? = nil, taxClassId: String? = nil, type: String? = nil, avail: Bool? = true, deliveryCode: String? = nil, checkProcessStatus: Bool? = false, packageDetails: ProductAddPackageDetails? = nil, storesIds: String? = nil, manufacturerInfo: ProductAddManufacturerInfo? = nil, productionPartnerIds: String? = nil, shippingTemplateId: Int? = 0, whenMade: String? = "made_to_order", isSupply: Bool? = true, downloadable: Bool? = false, materials: [String]? = nil, autoRenew: Bool? = false) {
        self.id = id
        self.model = model
        self.oldPrice = oldPrice
        self.price = price
        self.specialPrice = specialPrice
        self.spriceCreate = spriceCreate
        self.spriceExpire = spriceExpire
        self.costPrice = costPrice
        self.fixedCostShippingPrice = fixedCostShippingPrice
        self.retailPrice = retailPrice
        self.quantity = quantity
        self.availableForView = availableForView
        self.weight = weight
        self.weightUnit = weightUnit
        self.dimensionsUnit = dimensionsUnit
        self.increaseQuantity = increaseQuantity
        self.reduceQuantity = reduceQuantity
        self.warehouseId = warehouseId
        self.reserveQuantity = reserveQuantity
        self.manageStock = manageStock
        self.backorderStatus = backorderStatus
        self.name = name
        self.sku = sku
        self.visible = visible
        self.manufacturer = manufacturer
        self.manufacturerId = manufacturerId
        self.categoriesIds = categoriesIds
        self.relatedProductsIds = relatedProductsIds
        self.upSellProductsIds = upSellProductsIds
        self.crossSellProductsIds = crossSellProductsIds
        self.description = description
        self.shortDescription = shortDescription
        self.metaTitle = metaTitle
        self.metaKeywords = metaKeywords
        self.metaDescription = metaDescription
        self.storeId = storeId
        self.langId = langId
        self.inStock = inStock
        self.status = status
        self.seoUrl = seoUrl
        self.reportRequestId = reportRequestId
        self.disableReportCache = disableReportCache
        self.reindex = reindex
        self.tags = tags
        self.clearCache = clearCache
        self.gtin = gtin
        self.upc = upc
        self.mpn = mpn
        self.ean = ean
        self.isbn = isbn
        self.taxable = taxable
        self.productClass = productClass
        self.height = height
        self.length = length
        self.width = width
        self.harmonizedSystemCode = harmonizedSystemCode
        self.countryOfOrigin = countryOfOrigin
        self.searchKeywords = searchKeywords
        self.barcode = barcode
        self.isVirtual = isVirtual
        self.isFreeShipping = isFreeShipping
        self.reservePrice = reservePrice
        self.buyitnowPrice = buyitnowPrice
        self.availFrom = availFrom
        self.taxClassId = taxClassId
        self.type = type
        self.avail = avail
        self.deliveryCode = deliveryCode
        self.checkProcessStatus = checkProcessStatus
        self.packageDetails = packageDetails
        self.storesIds = storesIds
        self.manufacturerInfo = manufacturerInfo
        self.productionPartnerIds = productionPartnerIds
        self.shippingTemplateId = shippingTemplateId
        self.whenMade = whenMade
        self.isSupply = isSupply
        self.downloadable = downloadable
        self.materials = materials
        self.autoRenew = autoRenew
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case model
        case oldPrice = "old_price"
        case price
        case specialPrice = "special_price"
        case spriceCreate = "sprice_create"
        case spriceExpire = "sprice_expire"
        case costPrice = "cost_price"
        case fixedCostShippingPrice = "fixed_cost_shipping_price"
        case retailPrice = "retail_price"
        case quantity
        case availableForView = "available_for_view"
        case weight
        case weightUnit = "weight_unit"
        case dimensionsUnit = "dimensions_unit"
        case increaseQuantity = "increase_quantity"
        case reduceQuantity = "reduce_quantity"
        case warehouseId = "warehouse_id"
        case reserveQuantity = "reserve_quantity"
        case manageStock = "manage_stock"
        case backorderStatus = "backorder_status"
        case name
        case sku
        case visible
        case manufacturer
        case manufacturerId = "manufacturer_id"
        case categoriesIds = "categories_ids"
        case relatedProductsIds = "related_products_ids"
        case upSellProductsIds = "up_sell_products_ids"
        case crossSellProductsIds = "cross_sell_products_ids"
        case description
        case shortDescription = "short_description"
        case metaTitle = "meta_title"
        case metaKeywords = "meta_keywords"
        case metaDescription = "meta_description"
        case storeId = "store_id"
        case langId = "lang_id"
        case inStock = "in_stock"
        case status
        case seoUrl = "seo_url"
        case reportRequestId = "report_request_id"
        case disableReportCache = "disable_report_cache"
        case reindex
        case tags
        case clearCache = "clear_cache"
        case gtin
        case upc
        case mpn
        case ean
        case isbn
        case taxable
        case productClass = "product_class"
        case height
        case length
        case width
        case harmonizedSystemCode = "harmonized_system_code"
        case countryOfOrigin = "country_of_origin"
        case searchKeywords = "search_keywords"
        case barcode
        case isVirtual = "is_virtual"
        case isFreeShipping = "is_free_shipping"
        case reservePrice = "reserve_price"
        case buyitnowPrice = "buyitnow_price"
        case availFrom = "avail_from"
        case taxClassId = "tax_class_id"
        case type
        case avail
        case deliveryCode = "delivery_code"
        case checkProcessStatus = "check_process_status"
        case packageDetails = "package_details"
        case storesIds = "stores_ids"
        case manufacturerInfo = "manufacturer_info"
        case productionPartnerIds = "production_partner_ids"
        case shippingTemplateId = "shipping_template_id"
        case whenMade = "when_made"
        case isSupply = "is_supply"
        case downloadable
        case materials
        case autoRenew = "auto_renew"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(model, forKey: .model)
        try container.encodeIfPresent(oldPrice, forKey: .oldPrice)
        try container.encodeIfPresent(price, forKey: .price)
        try container.encodeIfPresent(specialPrice, forKey: .specialPrice)
        try container.encodeIfPresent(spriceCreate, forKey: .spriceCreate)
        try container.encodeIfPresent(spriceExpire, forKey: .spriceExpire)
        try container.encodeIfPresent(costPrice, forKey: .costPrice)
        try container.encodeIfPresent(fixedCostShippingPrice, forKey: .fixedCostShippingPrice)
        try container.encodeIfPresent(retailPrice, forKey: .retailPrice)
        try container.encodeIfPresent(quantity, forKey: .quantity)
        try container.encodeIfPresent(availableForView, forKey: .availableForView)
        try container.encodeIfPresent(weight, forKey: .weight)
        try container.encodeIfPresent(weightUnit, forKey: .weightUnit)
        try container.encodeIfPresent(dimensionsUnit, forKey: .dimensionsUnit)
        try container.encodeIfPresent(increaseQuantity, forKey: .increaseQuantity)
        try container.encodeIfPresent(reduceQuantity, forKey: .reduceQuantity)
        try container.encodeIfPresent(warehouseId, forKey: .warehouseId)
        try container.encodeIfPresent(reserveQuantity, forKey: .reserveQuantity)
        try container.encodeIfPresent(manageStock, forKey: .manageStock)
        try container.encodeIfPresent(backorderStatus, forKey: .backorderStatus)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(sku, forKey: .sku)
        try container.encodeIfPresent(visible, forKey: .visible)
        try container.encodeIfPresent(manufacturer, forKey: .manufacturer)
        try container.encodeIfPresent(manufacturerId, forKey: .manufacturerId)
        try container.encodeIfPresent(categoriesIds, forKey: .categoriesIds)
        try container.encodeIfPresent(relatedProductsIds, forKey: .relatedProductsIds)
        try container.encodeIfPresent(upSellProductsIds, forKey: .upSellProductsIds)
        try container.encodeIfPresent(crossSellProductsIds, forKey: .crossSellProductsIds)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(shortDescription, forKey: .shortDescription)
        try container.encodeIfPresent(metaTitle, forKey: .metaTitle)
        try container.encodeIfPresent(metaKeywords, forKey: .metaKeywords)
        try container.encodeIfPresent(metaDescription, forKey: .metaDescription)
        try container.encodeIfPresent(storeId, forKey: .storeId)
        try container.encodeIfPresent(langId, forKey: .langId)
        try container.encodeIfPresent(inStock, forKey: .inStock)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(seoUrl, forKey: .seoUrl)
        try container.encodeIfPresent(reportRequestId, forKey: .reportRequestId)
        try container.encodeIfPresent(disableReportCache, forKey: .disableReportCache)
        try container.encodeIfPresent(reindex, forKey: .reindex)
        try container.encodeIfPresent(tags, forKey: .tags)
        try container.encodeIfPresent(clearCache, forKey: .clearCache)
        try container.encodeIfPresent(gtin, forKey: .gtin)
        try container.encodeIfPresent(upc, forKey: .upc)
        try container.encodeIfPresent(mpn, forKey: .mpn)
        try container.encodeIfPresent(ean, forKey: .ean)
        try container.encodeIfPresent(isbn, forKey: .isbn)
        try container.encodeIfPresent(taxable, forKey: .taxable)
        try container.encodeIfPresent(productClass, forKey: .productClass)
        try container.encodeIfPresent(height, forKey: .height)
        try container.encodeIfPresent(length, forKey: .length)
        try container.encodeIfPresent(width, forKey: .width)
        try container.encodeIfPresent(harmonizedSystemCode, forKey: .harmonizedSystemCode)
        try container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)
        try container.encodeIfPresent(searchKeywords, forKey: .searchKeywords)
        try container.encodeIfPresent(barcode, forKey: .barcode)
        try container.encodeIfPresent(isVirtual, forKey: .isVirtual)
        try container.encodeIfPresent(isFreeShipping, forKey: .isFreeShipping)
        try container.encodeIfPresent(reservePrice, forKey: .reservePrice)
        try container.encodeIfPresent(buyitnowPrice, forKey: .buyitnowPrice)
        try container.encodeIfPresent(availFrom, forKey: .availFrom)
        try container.encodeIfPresent(taxClassId, forKey: .taxClassId)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(avail, forKey: .avail)
        try container.encodeIfPresent(deliveryCode, forKey: .deliveryCode)
        try container.encodeIfPresent(checkProcessStatus, forKey: .checkProcessStatus)
        try container.encodeIfPresent(packageDetails, forKey: .packageDetails)
        try container.encodeIfPresent(storesIds, forKey: .storesIds)
        try container.encodeIfPresent(manufacturerInfo, forKey: .manufacturerInfo)
        try container.encodeIfPresent(productionPartnerIds, forKey: .productionPartnerIds)
        try container.encodeIfPresent(shippingTemplateId, forKey: .shippingTemplateId)
        try container.encodeIfPresent(whenMade, forKey: .whenMade)
        try container.encodeIfPresent(isSupply, forKey: .isSupply)
        try container.encodeIfPresent(downloadable, forKey: .downloadable)
        try container.encodeIfPresent(materials, forKey: .materials)
        try container.encodeIfPresent(autoRenew, forKey: .autoRenew)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension ProductUpdate: Identifiable {}
