.class public final Lcom/stripe/android/PaymentSessionConfig$Builder;
.super Ljava/lang/Object;
.source "PaymentSessionConfig.kt"

# interfaces
.implements Lcom/stripe/android/ObjectBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/PaymentSessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/android/ObjectBuilder<",
        "Lcom/stripe/android/PaymentSessionConfig;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0011\n\u0002\u0008\u000f\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010 \u001a\u00020\u0002H\u0016J\u0010\u0010!\u001a\u00020\u00002\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005J\u0014\u0010\"\u001a\u00020\u00002\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007J\u000e\u0010#\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010$\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u000cJ\u001f\u0010%\u001a\u00020\u00002\u0012\u0010\r\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000f0&\"\u00020\u000f\u00a2\u0006\u0002\u0010\'J\u001f\u0010(\u001a\u00020\u00002\u0012\u0010\u0010\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000f0&\"\u00020\u000f\u00a2\u0006\u0002\u0010\'J\u0014\u0010)\u001a\u00020\u00002\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u000eJ\u0010\u0010*\u001a\u00020\u00002\u0008\u0008\u0001\u0010\u0013\u001a\u00020\u0005J\u0010\u0010+\u001a\u00020\u00002\u0008\u0010,\u001a\u0004\u0018\u00010\u0016J\u000e\u0010-\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u000cJ\u0010\u0010.\u001a\u00020\u00002\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018J\u0010\u0010/\u001a\u00020\u00002\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\u000e\u00100\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u000cJ\u000e\u00101\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u000cJ\u000e\u00102\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u000cJ\u0015\u00103\u001a\u00020\u00002\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u00104R\u0012\u0010\u0004\u001a\u00020\u00058\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00058\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u001f\u00a8\u00065"
    }
    d2 = {
        "Lcom/stripe/android/PaymentSessionConfig$Builder;",
        "Lcom/stripe/android/ObjectBuilder;",
        "Lcom/stripe/android/PaymentSessionConfig;",
        "()V",
        "addPaymentMethodFooterLayoutId",
        "",
        "allowedShippingCountryCodes",
        "",
        "",
        "billingAddressFields",
        "Lcom/stripe/android/view/BillingAddressFields;",
        "canDeletePaymentMethods",
        "",
        "hiddenShippingInfoFields",
        "",
        "Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;",
        "optionalShippingInfoFields",
        "paymentMethodTypes",
        "Lcom/stripe/android/model/PaymentMethod$Type;",
        "paymentMethodsFooterLayoutId",
        "shippingInfoRequired",
        "shippingInformation",
        "Lcom/stripe/android/model/ShippingInformation;",
        "shippingInformationValidator",
        "Lcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;",
        "shippingMethodsFactory",
        "Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;",
        "shippingMethodsRequired",
        "shouldPrefetchCustomer",
        "shouldShowGooglePay",
        "windowFlags",
        "Ljava/lang/Integer;",
        "build",
        "setAddPaymentMethodFooter",
        "setAllowedShippingCountryCodes",
        "setBillingAddressFields",
        "setCanDeletePaymentMethods",
        "setHiddenShippingInfoFields",
        "",
        "([Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Lcom/stripe/android/PaymentSessionConfig$Builder;",
        "setOptionalShippingInfoFields",
        "setPaymentMethodTypes",
        "setPaymentMethodsFooter",
        "setPrepopulatedShippingInfo",
        "shippingInfo",
        "setShippingInfoRequired",
        "setShippingInformationValidator",
        "setShippingMethodsFactory",
        "setShippingMethodsRequired",
        "setShouldPrefetchCustomer",
        "setShouldShowGooglePay",
        "setWindowFlags",
        "(Ljava/lang/Integer;)Lcom/stripe/android/PaymentSessionConfig$Builder;",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private addPaymentMethodFooterLayoutId:I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field

.field private allowedShippingCountryCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;

.field private canDeletePaymentMethods:Z

.field private hiddenShippingInfoFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;",
            ">;"
        }
    .end annotation
.end field

.field private optionalShippingInfoFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;",
            ">;"
        }
    .end annotation
.end field

.field private paymentMethodTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/android/model/PaymentMethod$Type;",
            ">;"
        }
    .end annotation
.end field

.field private paymentMethodsFooterLayoutId:I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field

.field private shippingInfoRequired:Z

.field private shippingInformation:Lcom/stripe/android/model/ShippingInformation;

.field private shippingInformationValidator:Lcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;

.field private shippingMethodsFactory:Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;

.field private shippingMethodsRequired:Z

.field private shouldPrefetchCustomer:Z

.field private shouldShowGooglePay:Z

.field private windowFlags:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-static {}, Lcom/stripe/android/PaymentSessionConfig;->access$Companion()Lcom/stripe/android/PaymentSessionConfig$Companion;

    invoke-static {}, Lcom/stripe/android/PaymentSessionConfig;->access$getDEFAULT_BILLING_ADDRESS_FIELDS$cp()Lcom/stripe/android/view/BillingAddressFields;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/PaymentSessionConfig$Builder;->billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/stripe/android/PaymentSessionConfig$Builder;->shippingInfoRequired:Z

    .line 100
    iput-boolean v0, p0, Lcom/stripe/android/PaymentSessionConfig$Builder;->shippingMethodsRequired:Z

    .line 104
    sget-object v1, Lcom/stripe/android/model/PaymentMethod$Type;->Card:Lcom/stripe/android/model/PaymentMethod$Type;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/android/PaymentSessionConfig$Builder;->paymentMethodTypes:Ljava/util/List;

    .line 106
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/android/PaymentSessionConfig$Builder;->allowedShippingCountryCodes:Ljava/util/Set;

    .line 110
    iput-boolean v0, p0, Lcom/stripe/android/PaymentSessionConfig$Builder;->shouldPrefetchCustomer:Z

    .line 111
    iput-boolean v0, p0, Lcom/stripe/android/PaymentSessionConfig$Builder;->canDeletePaymentMethods:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/stripe/android/PaymentSessionConfig;
    .registers 20
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    .line 282
    new-instance v18, Lcom/stripe/android/PaymentSessionConfig;

    .line 283
    iget-object v1, v0, Lcom/stripe/android/PaymentSessionConfig$Builder;->hiddenShippingInfoFields:Ljava/util/List;

    if-eqz v1, :cond_9

    goto :goto_d

    :cond_9
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_d
    move-object v2, v1

    .line 284
    iget-object v1, v0, Lcom/stripe/android/PaymentSessionConfig$Builder;->optionalShippingInfoFields:Ljava/util/List;

    if-eqz v1, :cond_13

    goto :goto_17

    :cond_13
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_17
    move-object v3, v1

    .line 285
    iget-object v4, v0, Lcom/stripe/android/PaymentSessionConfig$Builder;->shippingInformation:Lcom/stripe/android/model/ShippingInformation;

    .line 286
    iget-boolean v5, v0, Lcom/stripe/android/PaymentSessionConfig$Builder;->shippingInfoRequired:Z

    .line 287
    iget-boolean v6, v0, Lcom/stripe/android/PaymentSessionConfig$Builder;->shippingMethodsRequired:Z

    .line 288
    iget v7, v0, Lcom/stripe/android/PaymentSessionConfig$Builder;->paymentMethodsFooterLayoutId:I

    .line 289
    iget v8, v0, Lcom/stripe/android/PaymentSessionConfig$Builder;->addPaymentMethodFooterLayoutId:I

    .line 290
    iget-object v9, v0, Lcom/stripe/android/PaymentSessionConfig$Builder;->paymentMethodTypes:Ljava/util/List;

    .line 291
    iget-boolean v10, v0, Lcom/stripe/android/PaymentSessionConfig$Builder;->shouldShowGooglePay:Z

    .line 292
    iget-object v11, v0, Lcom/stripe/android/PaymentSessionConfig$Builder;->allowedShippingCountryCodes:Ljava/util/Set;

    .line 293
    iget-object v1, v0, Lcom/stripe/android/PaymentSessionConfig$Builder;->shippingInformationValidator:Lcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;

    if-eqz v1, :cond_2d

    goto :goto_34

    .line 294
    :cond_2d
    new-instance v1, Lcom/stripe/android/PaymentSessionConfig$DefaultShippingInfoValidator;

    invoke-direct {v1}, Lcom/stripe/android/PaymentSessionConfig$DefaultShippingInfoValidator;-><init>()V

    check-cast v1, Lcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;

    :goto_34
    move-object v15, v1

    .line 295
    iget-object v1, v0, Lcom/stripe/android/PaymentSessionConfig$Builder;->shippingMethodsFactory:Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;

    move-object/from16 v16, v1

    .line 296
    iget-object v1, v0, Lcom/stripe/android/PaymentSessionConfig$Builder;->windowFlags:Ljava/lang/Integer;

    move-object/from16 v17, v1

    .line 297
    iget-object v12, v0, Lcom/stripe/android/PaymentSessionConfig$Builder;->billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;

    .line 298
    iget-boolean v14, v0, Lcom/stripe/android/PaymentSessionConfig$Builder;->shouldPrefetchCustomer:Z

    .line 299
    iget-boolean v13, v0, Lcom/stripe/android/PaymentSessionConfig$Builder;->canDeletePaymentMethods:Z

    move-object/from16 v1, v18

    .line 282
    invoke-direct/range {v1 .. v17}, Lcom/stripe/android/PaymentSessionConfig;-><init>(Ljava/util/List;Ljava/util/List;Lcom/stripe/android/model/ShippingInformation;ZZIILjava/util/List;ZLjava/util/Set;Lcom/stripe/android/view/BillingAddressFields;ZZLcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;Ljava/lang/Integer;)V

    return-object v18
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 97
    invoke-virtual {p0}, Lcom/stripe/android/PaymentSessionConfig$Builder;->build()Lcom/stripe/android/PaymentSessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public final setAddPaymentMethodFooter(I)Lcom/stripe/android/PaymentSessionConfig$Builder;
    .registers 3
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 192
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/PaymentSessionConfig$Builder;

    .line 193
    iput p1, v0, Lcom/stripe/android/PaymentSessionConfig$Builder;->addPaymentMethodFooterLayoutId:I

    return-object v0
.end method

.method public final setAllowedShippingCountryCodes(Ljava/util/Set;)Lcom/stripe/android/PaymentSessionConfig$Builder;
    .registers 3
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/android/PaymentSessionConfig$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "allowedShippingCountryCodes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/PaymentSessionConfig$Builder;

    .line 235
    iput-object p1, v0, Lcom/stripe/android/PaymentSessionConfig$Builder;->allowedShippingCountryCodes:Ljava/util/Set;

    return-object v0
.end method

.method public final setBillingAddressFields(Lcom/stripe/android/view/BillingAddressFields;)Lcom/stripe/android/PaymentSessionConfig$Builder;
    .registers 3
    .param p1    # Lcom/stripe/android/view/BillingAddressFields;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "billingAddressFields"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/PaymentSessionConfig$Builder;

    .line 125
    iput-object p1, v0, Lcom/stripe/android/PaymentSessionConfig$Builder;->billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;

    return-object v0
.end method

.method public final setCanDeletePaymentMethods(Z)Lcom/stripe/android/PaymentSessionConfig$Builder;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 224
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/PaymentSessionConfig$Builder;

    .line 225
    iput-boolean p1, v0, Lcom/stripe/android/PaymentSessionConfig$Builder;->canDeletePaymentMethods:Z

    return-object v0
.end method

.method public final varargs setHiddenShippingInfoFields([Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Lcom/stripe/android/PaymentSessionConfig$Builder;
    .registers 4
    .param p1    # [Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "hiddenShippingInfoFields"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/PaymentSessionConfig$Builder;

    .line 136
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/stripe/android/PaymentSessionConfig$Builder;->hiddenShippingInfoFields:Ljava/util/List;

    return-object v0
.end method

.method public final varargs setOptionalShippingInfoFields([Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Lcom/stripe/android/PaymentSessionConfig$Builder;
    .registers 4
    .param p1    # [Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "optionalShippingInfoFields"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/PaymentSessionConfig$Builder;

    .line 146
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/stripe/android/PaymentSessionConfig$Builder;->optionalShippingInfoFields:Ljava/util/List;

    return-object v0
.end method

.method public final setPaymentMethodTypes(Ljava/util/List;)Lcom/stripe/android/PaymentSessionConfig$Builder;
    .registers 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/android/model/PaymentMethod$Type;",
            ">;)",
            "Lcom/stripe/android/PaymentSessionConfig$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "paymentMethodTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/PaymentSessionConfig$Builder;

    .line 208
    iput-object p1, v0, Lcom/stripe/android/PaymentSessionConfig$Builder;->paymentMethodTypes:Ljava/util/List;

    return-object v0
.end method

.method public final setPaymentMethodsFooter(I)Lcom/stripe/android/PaymentSessionConfig$Builder;
    .registers 3
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 182
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/PaymentSessionConfig$Builder;

    .line 183
    iput p1, v0, Lcom/stripe/android/PaymentSessionConfig$Builder;->paymentMethodsFooterLayoutId:I

    return-object v0
.end method

.method public final setPrepopulatedShippingInfo(Lcom/stripe/android/model/ShippingInformation;)Lcom/stripe/android/PaymentSessionConfig$Builder;
    .registers 3
    .param p1    # Lcom/stripe/android/model/ShippingInformation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 152
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/PaymentSessionConfig$Builder;

    .line 153
    iput-object p1, v0, Lcom/stripe/android/PaymentSessionConfig$Builder;->shippingInformation:Lcom/stripe/android/model/ShippingInformation;

    return-object v0
.end method

.method public final setShippingInfoRequired(Z)Lcom/stripe/android/PaymentSessionConfig$Builder;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 162
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/PaymentSessionConfig$Builder;

    .line 163
    iput-boolean p1, v0, Lcom/stripe/android/PaymentSessionConfig$Builder;->shippingInfoRequired:Z

    return-object v0
.end method

.method public final setShippingInformationValidator(Lcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;)Lcom/stripe/android/PaymentSessionConfig$Builder;
    .registers 3
    .param p1    # Lcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 254
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/PaymentSessionConfig$Builder;

    .line 255
    iput-object p1, v0, Lcom/stripe/android/PaymentSessionConfig$Builder;->shippingInformationValidator:Lcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;

    return-object v0
.end method

.method public final setShippingMethodsFactory(Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;)Lcom/stripe/android/PaymentSessionConfig$Builder;
    .registers 3
    .param p1    # Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 267
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/PaymentSessionConfig$Builder;

    .line 268
    iput-object p1, v0, Lcom/stripe/android/PaymentSessionConfig$Builder;->shippingMethodsFactory:Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;

    return-object v0
.end method

.method public final setShippingMethodsRequired(Z)Lcom/stripe/android/PaymentSessionConfig$Builder;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 172
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/PaymentSessionConfig$Builder;

    .line 173
    iput-boolean p1, v0, Lcom/stripe/android/PaymentSessionConfig$Builder;->shippingMethodsRequired:Z

    return-object v0
.end method

.method public final setShouldPrefetchCustomer(Z)Lcom/stripe/android/PaymentSessionConfig$Builder;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 277
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/PaymentSessionConfig$Builder;

    .line 278
    iput-boolean p1, v0, Lcom/stripe/android/PaymentSessionConfig$Builder;->shouldPrefetchCustomer:Z

    return-object v0
.end method

.method public final setShouldShowGooglePay(Z)Lcom/stripe/android/PaymentSessionConfig$Builder;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 216
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/PaymentSessionConfig$Builder;

    .line 217
    iput-boolean p1, v0, Lcom/stripe/android/PaymentSessionConfig$Builder;->shouldShowGooglePay:Z

    return-object v0
.end method

.method public final setWindowFlags(Ljava/lang/Integer;)Lcom/stripe/android/PaymentSessionConfig$Builder;
    .registers 3
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 243
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/PaymentSessionConfig$Builder;

    .line 244
    iput-object p1, v0, Lcom/stripe/android/PaymentSessionConfig$Builder;->windowFlags:Ljava/lang/Integer;

    return-object v0
.end method
