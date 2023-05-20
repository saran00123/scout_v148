.class public final Lcom/stripe/android/paymentsheet/ui/BillingAddressView;
.super Landroid/widget/LinearLayout;
.source "BillingAddressView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0015\u001a\u00020\u0016H\u0002J\u0008\u0010\u0017\u001a\u00020\u0016H\u0002J\u0015\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u001aH\u0001\u00a2\u0006\u0002\u0008\u001bJ\u0010\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u0012H\u0002J\r\u0010\u001e\u001a\u00020\u0016H\u0000\u00a2\u0006\u0002\u0008\u001fR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\u000cX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/stripe/android/paymentsheet/ui/BillingAddressView;",
        "Landroid/widget/LinearLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "countryAdapter",
        "Lcom/stripe/android/view/CountryAdapter;",
        "countryView",
        "Landroid/widget/AutoCompleteTextView;",
        "getCountryView$stripe_release",
        "()Landroid/widget/AutoCompleteTextView;",
        "postalCodeView",
        "Lcom/google/android/material/textfield/TextInputEditText;",
        "selectedCountry",
        "Lcom/stripe/android/view/Country;",
        "viewBinding",
        "Lcom/stripe/android/databinding/StripeBillingAddressLayoutBinding;",
        "configureCountryAutoComplete",
        "",
        "updateInitialCountry",
        "updateUiForCountryEntered",
        "displayCountryEntered",
        "",
        "updateUiForCountryEntered$stripe_release",
        "updatedSelectedCountryCode",
        "country",
        "validateCountry",
        "validateCountry$stripe_release",
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
.field private final countryAdapter:Lcom/stripe/android/view/CountryAdapter;

.field private final countryView:Landroid/widget/AutoCompleteTextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final postalCodeView:Lcom/google/android/material/textfield/TextInputEditText;

.field private selectedCountry:Lcom/stripe/android/view/Country;

.field private final viewBinding:Lcom/stripe/android/databinding/StripeBillingAddressLayoutBinding;


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

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
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

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 30
    move-object p3, p0

    check-cast p3, Landroid/view/ViewGroup;

    .line 28
    invoke-static {p2, p3}, Lcom/stripe/android/databinding/StripeBillingAddressLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/stripe/android/databinding/StripeBillingAddressLayoutBinding;

    move-result-object p2

    const-string p3, "StripeBillingAddressLayo\u2026text),\n        this\n    )"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->viewBinding:Lcom/stripe/android/databinding/StripeBillingAddressLayoutBinding;

    .line 33
    new-instance p2, Lcom/stripe/android/view/CountryAdapter;

    .line 35
    sget-object p3, Lcom/stripe/android/view/CountryUtils;->INSTANCE:Lcom/stripe/android/view/CountryUtils;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "context.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v0

    const-string v2, "ConfigurationCompat.getL\u2026sources.configuration)[0]"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p3, v0}, Lcom/stripe/android/view/CountryUtils;->getOrderedCountries$stripe_release(Ljava/util/Locale;)Ljava/util/List;

    move-result-object p3

    .line 38
    sget v0, Lcom/stripe/android/R$layout;->stripe_country_dropdown_item:I

    .line 39
    new-instance v2, Lcom/stripe/android/paymentsheet/ui/BillingAddressView$countryAdapter$1;

    invoke-direct {v2, p1}, Lcom/stripe/android/paymentsheet/ui/BillingAddressView$countryAdapter$1;-><init>(Landroid/content/Context;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 33
    invoke-direct {p2, p1, p3, v0, v2}, Lcom/stripe/android/view/CountryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILkotlin/jvm/functions/Function1;)V

    iput-object p2, p0, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->countryAdapter:Lcom/stripe/android/view/CountryAdapter;

    .line 47
    iget-object p2, p0, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->viewBinding:Lcom/stripe/android/databinding/StripeBillingAddressLayoutBinding;

    iget-object p2, p2, Lcom/stripe/android/databinding/StripeBillingAddressLayoutBinding;->country:Landroid/widget/AutoCompleteTextView;

    const-string p3, "viewBinding.country"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->countryView:Landroid/widget/AutoCompleteTextView;

    .line 48
    iget-object p2, p0, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->viewBinding:Lcom/stripe/android/databinding/StripeBillingAddressLayoutBinding;

    iget-object p2, p2, Lcom/stripe/android/databinding/StripeBillingAddressLayoutBinding;->postalCode:Lcom/google/android/material/textfield/TextInputEditText;

    const-string p3, "viewBinding.postalCode"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->postalCodeView:Lcom/google/android/material/textfield/TextInputEditText;

    const/4 p2, 0x1

    .line 53
    invoke-virtual {p0, p2}, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->setOrientation(I)V

    .line 56
    move-object p2, p0

    check-cast p2, Landroid/view/View;

    .line 57
    new-instance p3, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 58
    new-instance v0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>()V

    .line 59
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/stripe/android/R$dimen;->stripe_paymentsheet_form_corner_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCorners(IF)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    .line 57
    invoke-direct {p3, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 67
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/stripe/android/R$dimen;->stripe_paymentsheet_form_border_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 68
    sget v1, Lcom/stripe/android/R$color;->stripe_paymentsheet_form_border:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 66
    invoke-virtual {p3, v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FI)V

    const v0, 0x106000d

    .line 71
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 72
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 65
    check-cast p3, Landroid/graphics/drawable/Drawable;

    .line 55
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 75
    invoke-direct {p0}, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->configureCountryAutoComplete()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_7

    const/4 p2, 0x0

    .line 25
    check-cast p2, Landroid/util/AttributeSet;

    :cond_7
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_c

    const/4 p3, 0x0

    .line 26
    :cond_c
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getCountryAdapter$p(Lcom/stripe/android/paymentsheet/ui/BillingAddressView;)Lcom/stripe/android/view/CountryAdapter;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->countryAdapter:Lcom/stripe/android/view/CountryAdapter;

    return-object p0
.end method

.method public static final synthetic access$getSelectedCountry$p(Lcom/stripe/android/paymentsheet/ui/BillingAddressView;)Lcom/stripe/android/view/Country;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->selectedCountry:Lcom/stripe/android/view/Country;

    return-object p0
.end method

.method public static final synthetic access$setSelectedCountry$p(Lcom/stripe/android/paymentsheet/ui/BillingAddressView;Lcom/stripe/android/view/Country;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->selectedCountry:Lcom/stripe/android/view/Country;

    return-void
.end method

.method public static final synthetic access$updatedSelectedCountryCode(Lcom/stripe/android/paymentsheet/ui/BillingAddressView;Lcom/stripe/android/view/Country;)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->updatedSelectedCountryCode(Lcom/stripe/android/view/Country;)V

    return-void
.end method

.method private final configureCountryAutoComplete()V
    .registers 5

    .line 79
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->countryView:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 80
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->countryView:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->countryAdapter:Lcom/stripe/android/view/CountryAdapter;

    check-cast v1, Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->countryView:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/stripe/android/paymentsheet/ui/BillingAddressView$configureCountryAutoComplete$1;

    invoke-direct {v1, p0}, Lcom/stripe/android/paymentsheet/ui/BillingAddressView$configureCountryAutoComplete$1;-><init>(Lcom/stripe/android/paymentsheet/ui/BillingAddressView;)V

    check-cast v1, Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->countryView:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/stripe/android/paymentsheet/ui/BillingAddressView$configureCountryAutoComplete$2;

    invoke-direct {v1, p0}, Lcom/stripe/android/paymentsheet/ui/BillingAddressView$configureCountryAutoComplete$2;-><init>(Lcom/stripe/android/paymentsheet/ui/BillingAddressView;)V

    check-cast v1, Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 94
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->countryAdapter:Lcom/stripe/android/view/CountryAdapter;

    invoke-virtual {v0}, Lcom/stripe/android/view/CountryAdapter;->getFirstItem$stripe_release()Lcom/stripe/android/view/Country;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->selectedCountry:Lcom/stripe/android/view/Country;

    .line 95
    invoke-direct {p0}, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->updateInitialCountry()V

    .line 97
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->countryView:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/stripe/android/view/CountryAutoCompleteTextViewValidator;

    .line 98
    iget-object v2, p0, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->countryAdapter:Lcom/stripe/android/view/CountryAdapter;

    .line 99
    new-instance v3, Lcom/stripe/android/paymentsheet/ui/BillingAddressView$configureCountryAutoComplete$3;

    invoke-direct {v3, p0}, Lcom/stripe/android/paymentsheet/ui/BillingAddressView$configureCountryAutoComplete$3;-><init>(Lcom/stripe/android/paymentsheet/ui/BillingAddressView;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 97
    invoke-direct {v1, v2, v3}, Lcom/stripe/android/view/CountryAutoCompleteTextViewValidator;-><init>(Lcom/stripe/android/view/CountryAdapter;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Landroid/widget/AutoCompleteTextView$Validator;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    return-void
.end method

.method private final updateInitialCountry()V
    .registers 4

    .line 105
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->countryAdapter:Lcom/stripe/android/view/CountryAdapter;

    invoke-virtual {v0}, Lcom/stripe/android/view/CountryAdapter;->getFirstItem$stripe_release()Lcom/stripe/android/view/Country;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->countryView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Lcom/stripe/android/view/Country;->getName()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iput-object v0, p0, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->selectedCountry:Lcom/stripe/android/view/Country;

    return-void
.end method

.method private final updatedSelectedCountryCode(Lcom/stripe/android/view/Country;)V
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->selectedCountry:Lcom/stripe/android/view/Country;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_c

    .line 126
    iput-object p1, p0, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->selectedCountry:Lcom/stripe/android/view/Country;

    :cond_c
    return-void
.end method


# virtual methods
.method public final getCountryView$stripe_release()Landroid/widget/AutoCompleteTextView;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->countryView:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method public final updateUiForCountryEntered$stripe_release(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "displayCountryEntered"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    sget-object v0, Lcom/stripe/android/view/CountryUtils;->INSTANCE:Lcom/stripe/android/view/CountryUtils;

    invoke-virtual {v0, p1}, Lcom/stripe/android/view/CountryUtils;->getCountryByName$stripe_release(Ljava/lang/String;)Lcom/stripe/android/view/Country;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 117
    invoke-direct {p0, v0}, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->updatedSelectedCountryCode(Lcom/stripe/android/view/Country;)V

    goto :goto_1b

    .line 119
    :cond_11
    iget-object p1, p0, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->selectedCountry:Lcom/stripe/android/view/Country;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/stripe/android/view/Country;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    .line 121
    :goto_1b
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->countryView:Landroid/widget/AutoCompleteTextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final validateCountry$stripe_release()V
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/ui/BillingAddressView;->countryView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->performValidation()V

    return-void
.end method
