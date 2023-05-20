.class public final Lcom/stripe/android/view/ShippingInfoWidget;
.super Landroid/widget/LinearLayout;
.source "ShippingInfoWidget.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShippingInfoWidget.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShippingInfoWidget.kt\ncom/stripe/android/view/ShippingInfoWidget\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,439:1\n1#2:440\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001OB%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u00104\u001a\u000205H\u0002J\u0008\u00106\u001a\u000205H\u0002J\u0010\u00107\u001a\u0002082\u0006\u00109\u001a\u00020\u0015H\u0002J\u0010\u0010:\u001a\u0002082\u0006\u00109\u001a\u00020\u0015H\u0002J\u0010\u0010;\u001a\u0002082\u0006\u00109\u001a\u00020\u0015H\u0002J\u0010\u0010<\u001a\u0002052\u0006\u0010=\u001a\u00020>H\u0002J\u0010\u0010?\u001a\u0002052\u0008\u0010*\u001a\u0004\u0018\u00010\'J\u0008\u0010@\u001a\u000205H\u0002J\u0008\u0010A\u001a\u000205H\u0002J\u0008\u0010B\u001a\u000205H\u0002J\u0008\u0010C\u001a\u000205H\u0002J\u0008\u0010D\u001a\u000205H\u0002J\u0014\u0010E\u001a\u0002052\u000c\u0010F\u001a\u0008\u0012\u0004\u0012\u00020H0GJ\u0008\u0010I\u001a\u000205H\u0002J\u0010\u0010J\u001a\u0002052\u0006\u0010K\u001a\u00020LH\u0002J\u0010\u0010M\u001a\u0002052\u0006\u0010K\u001a\u00020LH\u0002J\u0006\u0010N\u001a\u000208R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R0\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R0\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0018\"\u0004\u0008\u001f\u0010\u001aR\u000e\u0010 \u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010&\u001a\u00020\'8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010)R\u0013\u0010*\u001a\u0004\u0018\u00010\'8F\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010)R\u000e\u0010,\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010.\u001a\u00020/8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00082\u00103\u001a\u0004\u00080\u00101\u00a8\u0006P"
    }
    d2 = {
        "Lcom/stripe/android/view/ShippingInfoWidget;",
        "Landroid/widget/LinearLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "addressEditText",
        "Lcom/stripe/android/view/StripeEditText;",
        "addressEditText2",
        "addressLine1TextInputLayout",
        "Lcom/google/android/material/textfield/TextInputLayout;",
        "addressLine2TextInputLayout",
        "cityEditText",
        "cityTextInputLayout",
        "countryAutoCompleteTextView",
        "Lcom/stripe/android/view/CountryAutoCompleteTextView;",
        "value",
        "",
        "Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;",
        "hiddenFields",
        "getHiddenFields",
        "()Ljava/util/List;",
        "setHiddenFields",
        "(Ljava/util/List;)V",
        "nameEditText",
        "nameTextInputLayout",
        "optionalFields",
        "getOptionalFields",
        "setOptionalFields",
        "phoneNumberEditText",
        "phoneNumberTextInputLayout",
        "postalCodeEditText",
        "postalCodeTextInputLayout",
        "postalCodeValidator",
        "Lcom/stripe/android/view/PostalCodeValidator;",
        "rawShippingInformation",
        "Lcom/stripe/android/model/ShippingInformation;",
        "getRawShippingInformation",
        "()Lcom/stripe/android/model/ShippingInformation;",
        "shippingInformation",
        "getShippingInformation",
        "stateEditText",
        "stateTextInputLayout",
        "viewBinding",
        "Lcom/stripe/android/databinding/AddressWidgetBinding;",
        "getViewBinding",
        "()Lcom/stripe/android/databinding/AddressWidgetBinding;",
        "viewBinding$delegate",
        "Lkotlin/Lazy;",
        "hideHiddenFields",
        "",
        "initView",
        "isFieldHidden",
        "",
        "field",
        "isFieldOptional",
        "isFieldRequired",
        "populateAddressFields",
        "address",
        "Lcom/stripe/android/model/Address;",
        "populateShippingInfo",
        "renderCanadianForm",
        "renderGreatBritainForm",
        "renderInternationalForm",
        "renderLabels",
        "renderUSForm",
        "setAllowedCountryCodes",
        "allowedCountryCodes",
        "",
        "",
        "setupErrorHandling",
        "updateConfigForCountry",
        "country",
        "Lcom/stripe/android/view/Country;",
        "updatePostalCodeInputFilter",
        "validateAllFields",
        "CustomizableShippingField",
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
.field private final addressEditText:Lcom/stripe/android/view/StripeEditText;

.field private final addressEditText2:Lcom/stripe/android/view/StripeEditText;

.field private final addressLine1TextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private final addressLine2TextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private final cityEditText:Lcom/stripe/android/view/StripeEditText;

.field private final cityTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private final countryAutoCompleteTextView:Lcom/stripe/android/view/CountryAutoCompleteTextView;

.field private hiddenFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final nameEditText:Lcom/stripe/android/view/StripeEditText;

.field private final nameTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private optionalFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final phoneNumberEditText:Lcom/stripe/android/view/StripeEditText;

.field private final phoneNumberTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private final postalCodeEditText:Lcom/stripe/android/view/StripeEditText;

.field private final postalCodeTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private final postalCodeValidator:Lcom/stripe/android/view/PostalCodeValidator;

.field private final stateEditText:Lcom/stripe/android/view/StripeEditText;

.field private final stateTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private final viewBinding$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/view/ShippingInfoWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/view/ShippingInfoWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance p2, Lcom/stripe/android/view/ShippingInfoWidget$viewBinding$2;

    invoke-direct {p2, p0, p1}, Lcom/stripe/android/view/ShippingInfoWidget$viewBinding$2;-><init>(Lcom/stripe/android/view/ShippingInfoWidget;Landroid/content/Context;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/view/ShippingInfoWidget;->viewBinding$delegate:Lkotlin/Lazy;

    .line 33
    new-instance p1, Lcom/stripe/android/view/PostalCodeValidator;

    invoke-direct {p1}, Lcom/stripe/android/view/PostalCodeValidator;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/view/ShippingInfoWidget;->postalCodeValidator:Lcom/stripe/android/view/PostalCodeValidator;

    .line 38
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/view/ShippingInfoWidget;->optionalFields:Ljava/util/List;

    .line 49
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/view/ShippingInfoWidget;->hiddenFields:Ljava/util/List;

    .line 57
    invoke-direct {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getViewBinding()Lcom/stripe/android/databinding/AddressWidgetBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/android/databinding/AddressWidgetBinding;->countryAutocompleteAaw:Lcom/stripe/android/view/CountryAutoCompleteTextView;

    const-string p2, "viewBinding.countryAutocompleteAaw"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/android/view/ShippingInfoWidget;->countryAutoCompleteTextView:Lcom/stripe/android/view/CountryAutoCompleteTextView;

    .line 58
    invoke-direct {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getViewBinding()Lcom/stripe/android/databinding/AddressWidgetBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/android/databinding/AddressWidgetBinding;->tlAddressLine1Aaw:Lcom/google/android/material/textfield/TextInputLayout;

    const-string p2, "viewBinding.tlAddressLine1Aaw"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/android/view/ShippingInfoWidget;->addressLine1TextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 59
    invoke-direct {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getViewBinding()Lcom/stripe/android/databinding/AddressWidgetBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/android/databinding/AddressWidgetBinding;->tlAddressLine2Aaw:Lcom/google/android/material/textfield/TextInputLayout;

    const-string p2, "viewBinding.tlAddressLine2Aaw"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/android/view/ShippingInfoWidget;->addressLine2TextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 60
    invoke-direct {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getViewBinding()Lcom/stripe/android/databinding/AddressWidgetBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/android/databinding/AddressWidgetBinding;->tlCityAaw:Lcom/google/android/material/textfield/TextInputLayout;

    const-string p2, "viewBinding.tlCityAaw"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/android/view/ShippingInfoWidget;->cityTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 61
    invoke-direct {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getViewBinding()Lcom/stripe/android/databinding/AddressWidgetBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/android/databinding/AddressWidgetBinding;->tlNameAaw:Lcom/google/android/material/textfield/TextInputLayout;

    const-string p2, "viewBinding.tlNameAaw"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/android/view/ShippingInfoWidget;->nameTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 62
    invoke-direct {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getViewBinding()Lcom/stripe/android/databinding/AddressWidgetBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/android/databinding/AddressWidgetBinding;->tlPostalCodeAaw:Lcom/google/android/material/textfield/TextInputLayout;

    const-string p2, "viewBinding.tlPostalCodeAaw"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/android/view/ShippingInfoWidget;->postalCodeTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 63
    invoke-direct {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getViewBinding()Lcom/stripe/android/databinding/AddressWidgetBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/android/databinding/AddressWidgetBinding;->tlStateAaw:Lcom/google/android/material/textfield/TextInputLayout;

    const-string p2, "viewBinding.tlStateAaw"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/android/view/ShippingInfoWidget;->stateTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 64
    invoke-direct {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getViewBinding()Lcom/stripe/android/databinding/AddressWidgetBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/android/databinding/AddressWidgetBinding;->tlPhoneNumberAaw:Lcom/google/android/material/textfield/TextInputLayout;

    const-string p2, "viewBinding.tlPhoneNumberAaw"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/android/view/ShippingInfoWidget;->phoneNumberTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 65
    invoke-direct {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getViewBinding()Lcom/stripe/android/databinding/AddressWidgetBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/android/databinding/AddressWidgetBinding;->etAddressLineOneAaw:Lcom/stripe/android/view/StripeEditText;

    const-string p2, "viewBinding.etAddressLineOneAaw"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/android/view/ShippingInfoWidget;->addressEditText:Lcom/stripe/android/view/StripeEditText;

    .line 66
    invoke-direct {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getViewBinding()Lcom/stripe/android/databinding/AddressWidgetBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/android/databinding/AddressWidgetBinding;->etAddressLineTwoAaw:Lcom/stripe/android/view/StripeEditText;

    const-string p2, "viewBinding.etAddressLineTwoAaw"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/android/view/ShippingInfoWidget;->addressEditText2:Lcom/stripe/android/view/StripeEditText;

    .line 67
    invoke-direct {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getViewBinding()Lcom/stripe/android/databinding/AddressWidgetBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/android/databinding/AddressWidgetBinding;->etCityAaw:Lcom/stripe/android/view/StripeEditText;

    const-string p2, "viewBinding.etCityAaw"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/android/view/ShippingInfoWidget;->cityEditText:Lcom/stripe/android/view/StripeEditText;

    .line 68
    invoke-direct {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getViewBinding()Lcom/stripe/android/databinding/AddressWidgetBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/android/databinding/AddressWidgetBinding;->etNameAaw:Lcom/stripe/android/view/StripeEditText;

    const-string p2, "viewBinding.etNameAaw"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/android/view/ShippingInfoWidget;->nameEditText:Lcom/stripe/android/view/StripeEditText;

    .line 69
    invoke-direct {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getViewBinding()Lcom/stripe/android/databinding/AddressWidgetBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/android/databinding/AddressWidgetBinding;->etPostalCodeAaw:Lcom/stripe/android/view/StripeEditText;

    const-string p2, "viewBinding.etPostalCodeAaw"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/android/view/ShippingInfoWidget;->postalCodeEditText:Lcom/stripe/android/view/StripeEditText;

    .line 70
    invoke-direct {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getViewBinding()Lcom/stripe/android/databinding/AddressWidgetBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/android/databinding/AddressWidgetBinding;->etStateAaw:Lcom/stripe/android/view/StripeEditText;

    const-string p2, "viewBinding.etStateAaw"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/android/view/ShippingInfoWidget;->stateEditText:Lcom/stripe/android/view/StripeEditText;

    .line 71
    invoke-direct {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getViewBinding()Lcom/stripe/android/databinding/AddressWidgetBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/android/databinding/AddressWidgetBinding;->etPhoneNumberAaw:Lcom/stripe/android/view/StripeEditText;

    const-string p2, "viewBinding.etPhoneNumberAaw"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/android/view/ShippingInfoWidget;->phoneNumberEditText:Lcom/stripe/android/view/StripeEditText;

    const/4 p1, 0x1

    .line 118
    invoke-virtual {p0, p1}, Lcom/stripe/android/view/ShippingInfoWidget;->setOrientation(I)V

    .line 120
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_121

    .line 121
    iget-object p1, p0, Lcom/stripe/android/view/ShippingInfoWidget;->nameEditText:Lcom/stripe/android/view/StripeEditText;

    const-string p2, "name"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/stripe/android/view/StripeEditText;->setAutofillHints([Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lcom/stripe/android/view/ShippingInfoWidget;->addressLine1TextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string p2, "postalAddress"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setAutofillHints([Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcom/stripe/android/view/ShippingInfoWidget;->postalCodeEditText:Lcom/stripe/android/view/StripeEditText;

    const-string p2, "postalCode"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/stripe/android/view/StripeEditText;->setAutofillHints([Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/stripe/android/view/ShippingInfoWidget;->phoneNumberEditText:Lcom/stripe/android/view/StripeEditText;

    const-string p2, "phone"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/stripe/android/view/StripeEditText;->setAutofillHints([Ljava/lang/String;)V

    .line 127
    :cond_121
    invoke-direct {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->initView()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_7

    const/4 p2, 0x0

    .line 23
    check-cast p2, Landroid/util/AttributeSet;

    :cond_7
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_c

    const/4 p3, 0x0

    .line 24
    :cond_c
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/android/view/ShippingInfoWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$updateConfigForCountry(Lcom/stripe/android/view/ShippingInfoWidget;Lcom/stripe/android/view/Country;)V
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/stripe/android/view/ShippingInfoWidget;->updateConfigForCountry(Lcom/stripe/android/view/Country;)V

    return-void
.end method

.method private final getRawShippingInformation()Lcom/stripe/android/model/ShippingInformation;
    .registers 5

    .line 90
    new-instance v0, Lcom/stripe/android/model/ShippingInformation;

    .line 91
    new-instance v1, Lcom/stripe/android/model/Address$Builder;

    invoke-direct {v1}, Lcom/stripe/android/model/Address$Builder;-><init>()V

    .line 92
    iget-object v2, p0, Lcom/stripe/android/view/ShippingInfoWidget;->cityEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {v2}, Lcom/stripe/android/view/StripeEditText;->getFieldText$stripe_release()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/stripe/android/model/Address$Builder;->setCity(Ljava/lang/String;)Lcom/stripe/android/model/Address$Builder;

    move-result-object v1

    .line 93
    iget-object v2, p0, Lcom/stripe/android/view/ShippingInfoWidget;->countryAutoCompleteTextView:Lcom/stripe/android/view/CountryAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/stripe/android/view/CountryAutoCompleteTextView;->getSelectedCountry()Lcom/stripe/android/view/Country;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lcom/stripe/android/view/Country;->getCode()Ljava/lang/String;

    move-result-object v2

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    invoke-virtual {v1, v2}, Lcom/stripe/android/model/Address$Builder;->setCountry(Ljava/lang/String;)Lcom/stripe/android/model/Address$Builder;

    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/stripe/android/view/ShippingInfoWidget;->addressEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {v2}, Lcom/stripe/android/view/StripeEditText;->getFieldText$stripe_release()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/stripe/android/model/Address$Builder;->setLine1(Ljava/lang/String;)Lcom/stripe/android/model/Address$Builder;

    move-result-object v1

    .line 95
    iget-object v2, p0, Lcom/stripe/android/view/ShippingInfoWidget;->addressEditText2:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {v2}, Lcom/stripe/android/view/StripeEditText;->getFieldText$stripe_release()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/stripe/android/model/Address$Builder;->setLine2(Ljava/lang/String;)Lcom/stripe/android/model/Address$Builder;

    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/stripe/android/view/ShippingInfoWidget;->postalCodeEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {v2}, Lcom/stripe/android/view/StripeEditText;->getFieldText$stripe_release()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/stripe/android/model/Address$Builder;->setPostalCode(Ljava/lang/String;)Lcom/stripe/android/model/Address$Builder;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/stripe/android/view/ShippingInfoWidget;->stateEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {v2}, Lcom/stripe/android/view/StripeEditText;->getFieldText$stripe_release()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/stripe/android/model/Address$Builder;->setState(Ljava/lang/String;)Lcom/stripe/android/model/Address$Builder;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lcom/stripe/android/model/Address$Builder;->build()Lcom/stripe/android/model/Address;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/stripe/android/view/ShippingInfoWidget;->nameEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {v2}, Lcom/stripe/android/view/StripeEditText;->getFieldText$stripe_release()Ljava/lang/String;

    move-result-object v2

    .line 100
    iget-object v3, p0, Lcom/stripe/android/view/ShippingInfoWidget;->phoneNumberEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {v3}, Lcom/stripe/android/view/StripeEditText;->getFieldText$stripe_release()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/android/model/ShippingInformation;-><init>(Lcom/stripe/android/model/Address;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getViewBinding()Lcom/stripe/android/databinding/AddressWidgetBinding;
    .registers 2

    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->viewBinding$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/databinding/AddressWidgetBinding;

    return-object v0
.end method

.method private final hideHiddenFields()V
    .registers 3

    .line 266
    sget-object v0, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->Line1:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    invoke-direct {p0, v0}, Lcom/stripe/android/view/ShippingInfoWidget;->isFieldHidden(Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_f

    .line 267
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->addressLine1TextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 269
    :cond_f
    sget-object v0, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->Line2:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    invoke-direct {p0, v0}, Lcom/stripe/android/view/ShippingInfoWidget;->isFieldHidden(Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 270
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->addressLine2TextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 272
    :cond_1c
    sget-object v0, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->State:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    invoke-direct {p0, v0}, Lcom/stripe/android/view/ShippingInfoWidget;->isFieldHidden(Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 273
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->stateTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 275
    :cond_29
    sget-object v0, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->City:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    invoke-direct {p0, v0}, Lcom/stripe/android/view/ShippingInfoWidget;->isFieldHidden(Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 276
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->cityTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 278
    :cond_36
    sget-object v0, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->PostalCode:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    invoke-direct {p0, v0}, Lcom/stripe/android/view/ShippingInfoWidget;->isFieldHidden(Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 279
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->postalCodeTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 281
    :cond_43
    sget-object v0, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->Phone:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    invoke-direct {p0, v0}, Lcom/stripe/android/view/ShippingInfoWidget;->isFieldHidden(Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 282
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->phoneNumberTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    :cond_50
    return-void
.end method

.method private final initView()V
    .registers 4

    .line 221
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->countryAutoCompleteTextView:Lcom/stripe/android/view/CountryAutoCompleteTextView;

    new-instance v1, Lcom/stripe/android/view/ShippingInfoWidget$initView$1;

    move-object v2, p0

    check-cast v2, Lcom/stripe/android/view/ShippingInfoWidget;

    invoke-direct {v1, v2}, Lcom/stripe/android/view/ShippingInfoWidget$initView$1;-><init>(Lcom/stripe/android/view/ShippingInfoWidget;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/CountryAutoCompleteTextView;->setCountryChangeCallback$stripe_release(Lkotlin/jvm/functions/Function1;)V

    .line 223
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->phoneNumberEditText:Lcom/stripe/android/view/StripeEditText;

    new-instance v1, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-direct {v1}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>()V

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/StripeEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 224
    invoke-direct {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->setupErrorHandling()V

    .line 225
    invoke-direct {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->renderLabels()V

    .line 227
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->countryAutoCompleteTextView:Lcom/stripe/android/view/CountryAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/stripe/android/view/CountryAutoCompleteTextView;->getSelectedCountry()Lcom/stripe/android/view/Country;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-direct {v2, v0}, Lcom/stripe/android/view/ShippingInfoWidget;->updateConfigForCountry(Lcom/stripe/android/view/Country;)V

    :cond_2c
    return-void
.end method

.method private final isFieldHidden(Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Z
    .registers 3

    .line 217
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->hiddenFields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final isFieldOptional(Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Z
    .registers 3

    .line 213
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->optionalFields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final isFieldRequired(Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Z
    .registers 3

    .line 209
    invoke-direct {p0, p1}, Lcom/stripe/android/view/ShippingInfoWidget;->isFieldOptional(Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0, p1}, Lcom/stripe/android/view/ShippingInfoWidget;->isFieldHidden(Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Z

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private final populateAddressFields(Lcom/stripe/android/model/Address;)V
    .registers 4

    .line 144
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->cityEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {p1}, Lcom/stripe/android/model/Address;->getCity()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/StripeEditText;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {p1}, Lcom/stripe/android/model/Address;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 146
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    if-eqz v1, :cond_24

    .line 147
    iget-object v1, p0, Lcom/stripe/android/view/ShippingInfoWidget;->countryAutoCompleteTextView:Lcom/stripe/android/view/CountryAutoCompleteTextView;

    invoke-virtual {v1, v0}, Lcom/stripe/android/view/CountryAutoCompleteTextView;->setCountrySelected$stripe_release(Ljava/lang/String;)V

    .line 150
    :cond_24
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->addressEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {p1}, Lcom/stripe/android/model/Address;->getLine1()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/StripeEditText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->addressEditText2:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {p1}, Lcom/stripe/android/model/Address;->getLine2()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/StripeEditText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->postalCodeEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {p1}, Lcom/stripe/android/model/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/StripeEditText;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->stateEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {p1}, Lcom/stripe/android/model/Address;->getState()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/stripe/android/view/StripeEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final renderCanadianForm()V
    .registers 4

    .line 368
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->addressLine1TextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget-object v1, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->Line1:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    invoke-direct {p0, v1}, Lcom/stripe/android/view/ShippingInfoWidget;->isFieldOptional(Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 369
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_label_address_optional:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_23

    .line 371
    :cond_17
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_label_address:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 368
    :goto_23
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->addressLine2TextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_label_apt_optional:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->postalCodeTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget-object v1, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->PostalCode:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    invoke-direct {p0, v1}, Lcom/stripe/android/view/ShippingInfoWidget;->isFieldOptional(Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 376
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_label_postal_code_optional:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_5a

    .line 378
    :cond_4e
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_label_postal_code:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 375
    :goto_5a
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->stateTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget-object v1, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->State:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    invoke-direct {p0, v1}, Lcom/stripe/android/view/ShippingInfoWidget;->isFieldOptional(Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 382
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_label_province_optional:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_80

    .line 384
    :cond_74
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_label_province:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 381
    :goto_80
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->postalCodeEditText:Lcom/stripe/android/view/StripeEditText;

    .line 388
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 390
    sget v2, Lcom/stripe/android/R$string;->address_postal_code_invalid:I

    .line 388
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 387
    invoke-virtual {v0, v1}, Lcom/stripe/android/view/StripeEditText;->setErrorMessage(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->stateEditText:Lcom/stripe/android/view/StripeEditText;

    .line 394
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 396
    sget v2, Lcom/stripe/android/R$string;->address_province_required:I

    .line 394
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 393
    invoke-virtual {v0, v1}, Lcom/stripe/android/view/StripeEditText;->setErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method private final renderGreatBritainForm()V
    .registers 4

    .line 342
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->addressLine1TextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget-object v1, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->Line1:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    invoke-direct {p0, v1}, Lcom/stripe/android/view/ShippingInfoWidget;->isFieldOptional(Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 343
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_label_address_line1_optional:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_23

    .line 345
    :cond_17
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_label_address_line1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 342
    :goto_23
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->addressLine2TextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 348
    sget v2, Lcom/stripe/android/R$string;->address_label_address_line2_optional:I

    .line 347
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->postalCodeTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget-object v1, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->PostalCode:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    invoke-direct {p0, v1}, Lcom/stripe/android/view/ShippingInfoWidget;->isFieldOptional(Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 352
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_label_postcode_optional:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_5a

    .line 354
    :cond_4e
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_label_postcode:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 351
    :goto_5a
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->stateTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget-object v1, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->State:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    invoke-direct {p0, v1}, Lcom/stripe/android/view/ShippingInfoWidget;->isFieldOptional(Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 358
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_label_county_optional:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_80

    .line 360
    :cond_74
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_label_county:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 357
    :goto_80
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->postalCodeEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_postcode_invalid:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/StripeEditText;->setErrorMessage(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->stateEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_county_required:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/StripeEditText;->setErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method private final renderInternationalForm()V
    .registers 4

    .line 403
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->addressLine1TextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget-object v1, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->Line1:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    invoke-direct {p0, v1}, Lcom/stripe/android/view/ShippingInfoWidget;->isFieldOptional(Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 404
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_label_address_line1_optional:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_23

    .line 406
    :cond_17
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_label_address_line1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 403
    :goto_23
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->addressLine2TextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_label_address_line2_optional:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->postalCodeTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget-object v1, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->PostalCode:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    invoke-direct {p0, v1}, Lcom/stripe/android/view/ShippingInfoWidget;->isFieldOptional(Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 413
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_label_zip_postal_code_optional:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_5a

    .line 415
    :cond_4e
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_label_zip_postal_code:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 412
    :goto_5a
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->stateTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget-object v1, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->State:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    invoke-direct {p0, v1}, Lcom/stripe/android/view/ShippingInfoWidget;->isFieldOptional(Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 420
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_label_region_generic_optional:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_80

    .line 422
    :cond_74
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_label_region_generic:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 419
    :goto_80
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 425
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->postalCodeEditText:Lcom/stripe/android/view/StripeEditText;

    .line 426
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 428
    sget v2, Lcom/stripe/android/R$string;->address_zip_postal_invalid:I

    .line 426
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 425
    invoke-virtual {v0, v1}, Lcom/stripe/android/view/StripeEditText;->setErrorMessage(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->stateEditText:Lcom/stripe/android/view/StripeEditText;

    .line 432
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 434
    sget v2, Lcom/stripe/android/R$string;->address_region_generic_required:I

    .line 432
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-virtual {v0, v1}, Lcom/stripe/android/view/StripeEditText;->setErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method private final renderLabels()V
    .registers 4

    .line 249
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->nameTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_label_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->cityTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget-object v1, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->City:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    invoke-direct {p0, v1}, Lcom/stripe/android/view/ShippingInfoWidget;->isFieldOptional(Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 252
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_label_city_optional:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_34

    .line 254
    :cond_28
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_label_city:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 251
    :goto_34
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->phoneNumberTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget-object v1, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->Phone:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    invoke-direct {p0, v1}, Lcom/stripe/android/view/ShippingInfoWidget;->isFieldOptional(Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 258
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_label_phone_number_optional:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_5a

    .line 260
    :cond_4e
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_label_phone_number:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 257
    :goto_5a
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 262
    invoke-direct {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->hideHiddenFields()V

    return-void
.end method

.method private final renderUSForm()V
    .registers 4

    .line 315
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->addressLine1TextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget-object v1, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->Line1:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    invoke-direct {p0, v1}, Lcom/stripe/android/view/ShippingInfoWidget;->isFieldOptional(Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 316
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_label_address_optional:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_23

    .line 318
    :cond_17
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_label_address:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 315
    :goto_23
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->addressLine2TextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 322
    sget v2, Lcom/stripe/android/R$string;->address_label_apt_optional:I

    .line 320
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->postalCodeTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget-object v1, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->PostalCode:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    invoke-direct {p0, v1}, Lcom/stripe/android/view/ShippingInfoWidget;->isFieldOptional(Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 326
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_label_zip_code_optional:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_5a

    .line 328
    :cond_4e
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_label_zip_code:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 325
    :goto_5a
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->stateTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget-object v1, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->State:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    invoke-direct {p0, v1}, Lcom/stripe/android/view/ShippingInfoWidget;->isFieldOptional(Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 332
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_label_state_optional:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_80

    .line 334
    :cond_74
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_label_state:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 331
    :goto_80
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->postalCodeEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_zip_invalid:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/StripeEditText;->setErrorMessage(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->stateEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_state_required:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/StripeEditText;->setErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method private final setupErrorHandling()V
    .registers 4

    .line 231
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->addressEditText:Lcom/stripe/android/view/StripeEditText;

    new-instance v1, Lcom/stripe/android/view/ErrorListener;

    iget-object v2, p0, Lcom/stripe/android/view/ShippingInfoWidget;->addressLine1TextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {v1, v2}, Lcom/stripe/android/view/ErrorListener;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    check-cast v1, Lcom/stripe/android/view/StripeEditText$ErrorMessageListener;

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/StripeEditText;->setErrorMessageListener(Lcom/stripe/android/view/StripeEditText$ErrorMessageListener;)V

    .line 232
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->cityEditText:Lcom/stripe/android/view/StripeEditText;

    new-instance v1, Lcom/stripe/android/view/ErrorListener;

    iget-object v2, p0, Lcom/stripe/android/view/ShippingInfoWidget;->cityTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {v1, v2}, Lcom/stripe/android/view/ErrorListener;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    check-cast v1, Lcom/stripe/android/view/StripeEditText$ErrorMessageListener;

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/StripeEditText;->setErrorMessageListener(Lcom/stripe/android/view/StripeEditText$ErrorMessageListener;)V

    .line 233
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->nameEditText:Lcom/stripe/android/view/StripeEditText;

    new-instance v1, Lcom/stripe/android/view/ErrorListener;

    iget-object v2, p0, Lcom/stripe/android/view/ShippingInfoWidget;->nameTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {v1, v2}, Lcom/stripe/android/view/ErrorListener;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    check-cast v1, Lcom/stripe/android/view/StripeEditText$ErrorMessageListener;

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/StripeEditText;->setErrorMessageListener(Lcom/stripe/android/view/StripeEditText$ErrorMessageListener;)V

    .line 234
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->postalCodeEditText:Lcom/stripe/android/view/StripeEditText;

    new-instance v1, Lcom/stripe/android/view/ErrorListener;

    iget-object v2, p0, Lcom/stripe/android/view/ShippingInfoWidget;->postalCodeTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {v1, v2}, Lcom/stripe/android/view/ErrorListener;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    check-cast v1, Lcom/stripe/android/view/StripeEditText$ErrorMessageListener;

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/StripeEditText;->setErrorMessageListener(Lcom/stripe/android/view/StripeEditText$ErrorMessageListener;)V

    .line 235
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->stateEditText:Lcom/stripe/android/view/StripeEditText;

    new-instance v1, Lcom/stripe/android/view/ErrorListener;

    iget-object v2, p0, Lcom/stripe/android/view/ShippingInfoWidget;->stateTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {v1, v2}, Lcom/stripe/android/view/ErrorListener;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    check-cast v1, Lcom/stripe/android/view/StripeEditText$ErrorMessageListener;

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/StripeEditText;->setErrorMessageListener(Lcom/stripe/android/view/StripeEditText$ErrorMessageListener;)V

    .line 236
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->phoneNumberEditText:Lcom/stripe/android/view/StripeEditText;

    new-instance v1, Lcom/stripe/android/view/ErrorListener;

    iget-object v2, p0, Lcom/stripe/android/view/ShippingInfoWidget;->phoneNumberTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {v1, v2}, Lcom/stripe/android/view/ErrorListener;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    check-cast v1, Lcom/stripe/android/view/StripeEditText$ErrorMessageListener;

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/StripeEditText;->setErrorMessageListener(Lcom/stripe/android/view/StripeEditText$ErrorMessageListener;)V

    .line 237
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->addressEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_required:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/StripeEditText;->setErrorMessage(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->cityEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_city_required:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/StripeEditText;->setErrorMessage(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->nameEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$string;->address_name_required:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/StripeEditText;->setErrorMessage(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->phoneNumberEditText:Lcom/stripe/android/view/StripeEditText;

    .line 241
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 243
    sget v2, Lcom/stripe/android/R$string;->address_phone_number_required:I

    .line 241
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-virtual {v0, v1}, Lcom/stripe/android/view/StripeEditText;->setErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method private final updateConfigForCountry(Lcom/stripe/android/view/Country;)V
    .registers 5

    .line 287
    invoke-virtual {p1}, Lcom/stripe/android/view/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 288
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Locale.US"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-direct {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->renderUSForm()V

    goto :goto_46

    .line 289
    :cond_19
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v2, "Locale.UK"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-direct {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->renderGreatBritainForm()V

    goto :goto_46

    .line 290
    :cond_2e
    sget-object v1, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    const-string v2, "Locale.CANADA"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-direct {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->renderCanadianForm()V

    goto :goto_46

    .line 291
    :cond_43
    invoke-direct {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->renderInternationalForm()V

    .line 294
    :goto_46
    invoke-direct {p0, p1}, Lcom/stripe/android/view/ShippingInfoWidget;->updatePostalCodeInputFilter(Lcom/stripe/android/view/Country;)V

    .line 298
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->postalCodeTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 297
    sget-object v1, Lcom/stripe/android/view/CountryUtils;->INSTANCE:Lcom/stripe/android/view/CountryUtils;

    invoke-virtual {p1}, Lcom/stripe/android/view/Country;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/stripe/android/view/CountryUtils;->doesCountryUsePostalCode$stripe_release(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_61

    .line 298
    sget-object p1, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->PostalCode:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    invoke-direct {p0, p1}, Lcom/stripe/android/view/ShippingInfoWidget;->isFieldHidden(Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Z

    move-result p1

    if-nez p1, :cond_61

    const/4 p1, 0x0

    goto :goto_63

    :cond_61
    const/16 p1, 0x8

    .line 297
    :goto_63
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    return-void
.end method

.method private final updatePostalCodeInputFilter(Lcom/stripe/android/view/Country;)V
    .registers 5

    .line 307
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->postalCodeEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {p1}, Lcom/stripe/android/view/Country;->getCode()Ljava/lang/String;

    move-result-object p1

    .line 308
    sget-object v1, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    const-string v2, "Locale.CANADA"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_25

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$AllCaps;

    invoke-direct {v2}, Landroid/text/InputFilter$AllCaps;-><init>()V

    check-cast v2, Landroid/text/InputFilter;

    aput-object v2, p1, v1

    goto :goto_27

    .line 309
    :cond_25
    new-array p1, v1, [Landroid/text/InputFilter;

    .line 307
    :goto_27
    invoke-virtual {v0, p1}, Lcom/stripe/android/view/StripeEditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method


# virtual methods
.method public final getHiddenFields()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->hiddenFields:Ljava/util/List;

    return-object v0
.end method

.method public final getOptionalFields()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->optionalFields:Ljava/util/List;

    return-object v0
.end method

.method public final getShippingInformation()Lcom/stripe/android/model/ShippingInformation;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->validateAllFields()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    .line 81
    :cond_8
    invoke-direct {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->getRawShippingInformation()Lcom/stripe/android/model/ShippingInformation;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public final populateShippingInfo(Lcom/stripe/android/model/ShippingInformation;)V
    .registers 4
    .param p1    # Lcom/stripe/android/model/ShippingInformation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_3

    return-void

    .line 138
    :cond_3
    invoke-virtual {p1}, Lcom/stripe/android/model/ShippingInformation;->getAddress()Lcom/stripe/android/model/Address;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 440
    move-object v1, p0

    check-cast v1, Lcom/stripe/android/view/ShippingInfoWidget;

    .line 138
    invoke-direct {v1, v0}, Lcom/stripe/android/view/ShippingInfoWidget;->populateAddressFields(Lcom/stripe/android/model/Address;)V

    .line 139
    :cond_f
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->nameEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {p1}, Lcom/stripe/android/model/ShippingInformation;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/StripeEditText;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->phoneNumberEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {p1}, Lcom/stripe/android/model/ShippingInformation;->getPhone()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/stripe/android/view/StripeEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setAllowedCountryCodes(Ljava/util/Set;)V
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
            ">;)V"
        }
    .end annotation

    const-string v0, "allowedCountryCodes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->countryAutoCompleteTextView:Lcom/stripe/android/view/CountryAutoCompleteTextView;

    invoke-virtual {v0, p1}, Lcom/stripe/android/view/CountryAutoCompleteTextView;->setAllowedCountryCodes$stripe_release(Ljava/util/Set;)V

    return-void
.end method

.method public final setHiddenFields(Ljava/util/List;)V
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
            "Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/stripe/android/view/ShippingInfoWidget;->hiddenFields:Ljava/util/List;

    .line 53
    invoke-direct {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->renderLabels()V

    .line 54
    iget-object p1, p0, Lcom/stripe/android/view/ShippingInfoWidget;->countryAutoCompleteTextView:Lcom/stripe/android/view/CountryAutoCompleteTextView;

    invoke-virtual {p1}, Lcom/stripe/android/view/CountryAutoCompleteTextView;->getSelectedCountry()Lcom/stripe/android/view/Country;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 440
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/view/ShippingInfoWidget;

    .line 54
    invoke-direct {v0, p1}, Lcom/stripe/android/view/ShippingInfoWidget;->updateConfigForCountry(Lcom/stripe/android/view/Country;)V

    :cond_18
    return-void
.end method

.method public final setOptionalFields(Ljava/util/List;)V
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
            "Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/stripe/android/view/ShippingInfoWidget;->optionalFields:Ljava/util/List;

    .line 42
    invoke-direct {p0}, Lcom/stripe/android/view/ShippingInfoWidget;->renderLabels()V

    .line 43
    iget-object p1, p0, Lcom/stripe/android/view/ShippingInfoWidget;->countryAutoCompleteTextView:Lcom/stripe/android/view/CountryAutoCompleteTextView;

    invoke-virtual {p1}, Lcom/stripe/android/view/CountryAutoCompleteTextView;->getSelectedCountry()Lcom/stripe/android/view/Country;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 440
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/view/ShippingInfoWidget;

    .line 43
    invoke-direct {v0, p1}, Lcom/stripe/android/view/ShippingInfoWidget;->updateConfigForCountry(Lcom/stripe/android/view/Country;)V

    :cond_18
    return-void
.end method

.method public final validateAllFields()Z
    .registers 13

    .line 166
    iget-object v0, p0, Lcom/stripe/android/view/ShippingInfoWidget;->addressEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {v0}, Lcom/stripe/android/view/StripeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10d

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10d

    .line 167
    iget-object v2, p0, Lcom/stripe/android/view/ShippingInfoWidget;->nameEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {v2}, Lcom/stripe/android/view/StripeEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_10d

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10d

    .line 168
    iget-object v3, p0, Lcom/stripe/android/view/ShippingInfoWidget;->cityEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {v3}, Lcom/stripe/android/view/StripeEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_10d

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10d

    .line 169
    iget-object v4, p0, Lcom/stripe/android/view/ShippingInfoWidget;->stateEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {v4}, Lcom/stripe/android/view/StripeEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    if-eqz v4, :cond_10d

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10d

    .line 170
    iget-object v5, p0, Lcom/stripe/android/view/ShippingInfoWidget;->postalCodeEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {v5}, Lcom/stripe/android/view/StripeEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    if-eqz v5, :cond_10d

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10d

    .line 171
    iget-object v6, p0, Lcom/stripe/android/view/ShippingInfoWidget;->phoneNumberEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {v6}, Lcom/stripe/android/view/StripeEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    if-eqz v6, :cond_10d

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_10d

    .line 173
    iget-object v7, p0, Lcom/stripe/android/view/ShippingInfoWidget;->countryAutoCompleteTextView:Lcom/stripe/android/view/CountryAutoCompleteTextView;

    invoke-virtual {v7}, Lcom/stripe/android/view/CountryAutoCompleteTextView;->validateCountry$stripe_release()V

    .line 174
    iget-object v7, p0, Lcom/stripe/android/view/ShippingInfoWidget;->countryAutoCompleteTextView:Lcom/stripe/android/view/CountryAutoCompleteTextView;

    invoke-virtual {v7}, Lcom/stripe/android/view/CountryAutoCompleteTextView;->getSelectedCountry()Lcom/stripe/android/view/Country;

    move-result-object v7

    .line 176
    iget-object v8, p0, Lcom/stripe/android/view/ShippingInfoWidget;->postalCodeValidator:Lcom/stripe/android/view/PostalCodeValidator;

    if-eqz v7, :cond_69

    .line 178
    invoke-virtual {v7}, Lcom/stripe/android/view/Country;->getCode()Ljava/lang/String;

    move-result-object v9

    goto :goto_6a

    :cond_69
    const/4 v9, 0x0

    .line 179
    :goto_6a
    iget-object v10, p0, Lcom/stripe/android/view/ShippingInfoWidget;->optionalFields:Ljava/util/List;

    .line 180
    iget-object v11, p0, Lcom/stripe/android/view/ShippingInfoWidget;->hiddenFields:Ljava/util/List;

    .line 176
    invoke-virtual {v8, v5, v9, v10, v11}, Lcom/stripe/android/view/PostalCodeValidator;->isValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z

    move-result v5

    .line 182
    iget-object v8, p0, Lcom/stripe/android/view/ShippingInfoWidget;->postalCodeEditText:Lcom/stripe/android/view/StripeEditText;

    xor-int/lit8 v9, v5, 0x1

    invoke-virtual {v8, v9}, Lcom/stripe/android/view/StripeEditText;->setShouldShowError(Z)V

    .line 184
    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v8, 0x1

    if-nez v0, :cond_84

    move v0, v8

    goto :goto_85

    :cond_84
    move v0, v1

    :goto_85
    if-eqz v0, :cond_91

    .line 185
    sget-object v0, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->Line1:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    invoke-direct {p0, v0}, Lcom/stripe/android/view/ShippingInfoWidget;->isFieldRequired(Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Z

    move-result v0

    if-eqz v0, :cond_91

    move v0, v8

    goto :goto_92

    :cond_91
    move v0, v1

    .line 186
    :goto_92
    iget-object v9, p0, Lcom/stripe/android/view/ShippingInfoWidget;->addressEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {v9, v0}, Lcom/stripe/android/view/StripeEditText;->setShouldShowError(Z)V

    .line 188
    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_a1

    move v3, v8

    goto :goto_a2

    :cond_a1
    move v3, v1

    :goto_a2
    if-eqz v3, :cond_ae

    .line 189
    sget-object v3, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->City:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    invoke-direct {p0, v3}, Lcom/stripe/android/view/ShippingInfoWidget;->isFieldRequired(Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Z

    move-result v3

    if-eqz v3, :cond_ae

    move v3, v8

    goto :goto_af

    :cond_ae
    move v3, v1

    .line 190
    :goto_af
    iget-object v9, p0, Lcom/stripe/android/view/ShippingInfoWidget;->cityEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {v9, v3}, Lcom/stripe/android/view/StripeEditText;->setShouldShowError(Z)V

    .line 192
    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_be

    move v2, v8

    goto :goto_bf

    :cond_be
    move v2, v1

    .line 193
    :goto_bf
    iget-object v9, p0, Lcom/stripe/android/view/ShippingInfoWidget;->nameEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {v9, v2}, Lcom/stripe/android/view/StripeEditText;->setShouldShowError(Z)V

    .line 195
    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_ce

    move v4, v8

    goto :goto_cf

    :cond_ce
    move v4, v1

    :goto_cf
    if-eqz v4, :cond_db

    .line 196
    sget-object v4, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->State:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    invoke-direct {p0, v4}, Lcom/stripe/android/view/ShippingInfoWidget;->isFieldRequired(Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Z

    move-result v4

    if-eqz v4, :cond_db

    move v4, v8

    goto :goto_dc

    :cond_db
    move v4, v1

    .line 197
    :goto_dc
    iget-object v9, p0, Lcom/stripe/android/view/ShippingInfoWidget;->stateEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {v9, v4}, Lcom/stripe/android/view/StripeEditText;->setShouldShowError(Z)V

    .line 199
    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_eb

    move v6, v8

    goto :goto_ec

    :cond_eb
    move v6, v1

    :goto_ec
    if-eqz v6, :cond_f8

    .line 200
    sget-object v6, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->Phone:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    invoke-direct {p0, v6}, Lcom/stripe/android/view/ShippingInfoWidget;->isFieldRequired(Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;)Z

    move-result v6

    if-eqz v6, :cond_f8

    move v6, v8

    goto :goto_f9

    :cond_f8
    move v6, v1

    .line 201
    :goto_f9
    iget-object v9, p0, Lcom/stripe/android/view/ShippingInfoWidget;->phoneNumberEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {v9, v6}, Lcom/stripe/android/view/StripeEditText;->setShouldShowError(Z)V

    if-eqz v5, :cond_10d

    if-nez v0, :cond_10d

    if-nez v3, :cond_10d

    if-nez v4, :cond_10d

    if-nez v2, :cond_10d

    if-nez v6, :cond_10d

    if-eqz v7, :cond_10d

    move v1, v8

    :cond_10d
    return v1
.end method
