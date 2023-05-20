.class public final Lcom/stripe/android/view/AddPaymentMethodCardView;
.super Lcom/stripe/android/view/AddPaymentMethodView;
.source "AddPaymentMethodCardView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/view/AddPaymentMethodCardView$OnEditorActionListenerImpl;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u001eB/\u0008\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0010\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001dH\u0016R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\u0004\u0018\u00010\u000e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/stripe/android/view/AddPaymentMethodCardView;",
        "Lcom/stripe/android/view/AddPaymentMethodView;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "billingAddressFields",
        "Lcom/stripe/android/view/BillingAddressFields;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/stripe/android/view/BillingAddressFields;)V",
        "billingAddressWidget",
        "Lcom/stripe/android/view/ShippingInfoWidget;",
        "billingDetails",
        "Lcom/stripe/android/model/PaymentMethod$BillingDetails;",
        "getBillingDetails",
        "()Lcom/stripe/android/model/PaymentMethod$BillingDetails;",
        "cardMultilineWidget",
        "Lcom/stripe/android/view/CardMultilineWidget;",
        "createParams",
        "Lcom/stripe/android/model/PaymentMethodCreateParams;",
        "getCreateParams",
        "()Lcom/stripe/android/model/PaymentMethodCreateParams;",
        "initEnterListeners",
        "",
        "activity",
        "Lcom/stripe/android/view/AddPaymentMethodActivity;",
        "setCommunicatingProgress",
        "communicating",
        "",
        "OnEditorActionListenerImpl",
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
.field private final billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;

.field private final billingAddressWidget:Lcom/stripe/android/view/ShippingInfoWidget;

.field private final cardMultilineWidget:Lcom/stripe/android/view/CardMultilineWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/stripe/android/view/AddPaymentMethodCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/stripe/android/view/BillingAddressFields;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
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

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/stripe/android/view/AddPaymentMethodCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/stripe/android/view/BillingAddressFields;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11
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

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/stripe/android/view/AddPaymentMethodCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/stripe/android/view/BillingAddressFields;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/stripe/android/view/BillingAddressFields;)V
    .registers 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/android/view/BillingAddressFields;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billingAddressFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/android/view/AddPaymentMethodView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p4, p0, Lcom/stripe/android/view/AddPaymentMethodCardView;->billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;

    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 66
    move-object p3, p0

    check-cast p3, Landroid/view/ViewGroup;

    const/4 p4, 0x1

    .line 64
    invoke-static {p2, p3, p4}, Lcom/stripe/android/databinding/AddPaymentMethodCardViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/stripe/android/databinding/AddPaymentMethodCardViewBinding;

    move-result-object p2

    const-string p3, "AddPaymentMethodCardView\u2026           true\n        )"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object p3, p2, Lcom/stripe/android/databinding/AddPaymentMethodCardViewBinding;->cardMultilineWidget:Lcom/stripe/android/view/CardMultilineWidget;

    const-string v0, "viewBinding.cardMultilineWidget"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/stripe/android/view/AddPaymentMethodCardView;->cardMultilineWidget:Lcom/stripe/android/view/CardMultilineWidget;

    .line 70
    iget-object p3, p0, Lcom/stripe/android/view/AddPaymentMethodCardView;->cardMultilineWidget:Lcom/stripe/android/view/CardMultilineWidget;

    .line 71
    iget-object v0, p0, Lcom/stripe/android/view/AddPaymentMethodCardView;->billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;

    sget-object v1, Lcom/stripe/android/view/BillingAddressFields;->PostalCode:Lcom/stripe/android/view/BillingAddressFields;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_33

    goto :goto_34

    :cond_33
    move p4, v2

    .line 70
    :goto_34
    invoke-virtual {p3, p4}, Lcom/stripe/android/view/CardMultilineWidget;->setShouldShowPostalCode(Z)V

    .line 74
    iget-object p2, p2, Lcom/stripe/android/databinding/AddPaymentMethodCardViewBinding;->billingAddressWidget:Lcom/stripe/android/view/ShippingInfoWidget;

    const-string p3, "viewBinding.billingAddressWidget"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/stripe/android/view/AddPaymentMethodCardView;->billingAddressWidget:Lcom/stripe/android/view/ShippingInfoWidget;

    .line 75
    iget-object p2, p0, Lcom/stripe/android/view/AddPaymentMethodCardView;->billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;

    sget-object p3, Lcom/stripe/android/view/BillingAddressFields;->Full:Lcom/stripe/android/view/BillingAddressFields;

    if-ne p2, p3, :cond_4b

    .line 76
    iget-object p2, p0, Lcom/stripe/android/view/AddPaymentMethodCardView;->billingAddressWidget:Lcom/stripe/android/view/ShippingInfoWidget;

    invoke-virtual {p2, v2}, Lcom/stripe/android/view/ShippingInfoWidget;->setVisibility(I)V

    .line 79
    :cond_4b
    instance-of p2, p1, Lcom/stripe/android/view/AddPaymentMethodActivity;

    if-nez p2, :cond_50

    const/4 p1, 0x0

    :cond_50
    check-cast p1, Lcom/stripe/android/view/AddPaymentMethodActivity;

    if-eqz p1, :cond_57

    .line 80
    invoke-direct {p0, p1}, Lcom/stripe/android/view/AddPaymentMethodCardView;->initEnterListeners(Lcom/stripe/android/view/AddPaymentMethodActivity;)V

    :cond_57
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/stripe/android/view/BillingAddressFields;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_7

    const/4 p2, 0x0

    .line 21
    check-cast p2, Landroid/util/AttributeSet;

    :cond_7
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_c

    const/4 p3, 0x0

    :cond_c
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_12

    .line 23
    sget-object p4, Lcom/stripe/android/view/BillingAddressFields;->PostalCode:Lcom/stripe/android/view/BillingAddressFields;

    :cond_12
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/android/view/AddPaymentMethodCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/stripe/android/view/BillingAddressFields;)V

    return-void
.end method

.method private final getBillingDetails()Lcom/stripe/android/model/PaymentMethod$BillingDetails;
    .registers 4

    .line 54
    iget-object v0, p0, Lcom/stripe/android/view/AddPaymentMethodCardView;->billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;

    sget-object v1, Lcom/stripe/android/view/BillingAddressFields;->Full:Lcom/stripe/android/view/BillingAddressFields;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_15

    .line 55
    iget-object v0, p0, Lcom/stripe/android/view/AddPaymentMethodCardView;->billingAddressWidget:Lcom/stripe/android/view/ShippingInfoWidget;

    invoke-virtual {v0}, Lcom/stripe/android/view/ShippingInfoWidget;->getShippingInformation()Lcom/stripe/android/model/ShippingInformation;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 56
    sget-object v1, Lcom/stripe/android/model/PaymentMethod$BillingDetails;->Companion:Lcom/stripe/android/model/PaymentMethod$BillingDetails$Companion;

    invoke-virtual {v1, v0}, Lcom/stripe/android/model/PaymentMethod$BillingDetails$Companion;->create(Lcom/stripe/android/model/ShippingInformation;)Lcom/stripe/android/model/PaymentMethod$BillingDetails;

    move-result-object v2

    :cond_15
    return-object v2
.end method

.method private final initEnterListeners(Lcom/stripe/android/view/AddPaymentMethodActivity;)V
    .registers 5

    .line 85
    new-instance v0, Lcom/stripe/android/view/AddPaymentMethodCardView$OnEditorActionListenerImpl;

    .line 88
    new-instance v1, Lcom/stripe/android/view/KeyboardController;

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/stripe/android/view/KeyboardController;-><init>(Landroid/app/Activity;)V

    .line 85
    invoke-direct {v0, p1, p0, v1}, Lcom/stripe/android/view/AddPaymentMethodCardView$OnEditorActionListenerImpl;-><init>(Lcom/stripe/android/view/AddPaymentMethodActivity;Lcom/stripe/android/view/AddPaymentMethodCardView;Lcom/stripe/android/view/KeyboardController;)V

    .line 91
    iget-object p1, p0, Lcom/stripe/android/view/AddPaymentMethodCardView;->cardMultilineWidget:Lcom/stripe/android/view/CardMultilineWidget;

    invoke-virtual {p1}, Lcom/stripe/android/view/CardMultilineWidget;->getCardNumberEditText$stripe_release()Lcom/stripe/android/view/CardNumberEditText;

    move-result-object p1

    .line 92
    check-cast v0, Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, v0}, Lcom/stripe/android/view/CardNumberEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 93
    iget-object p1, p0, Lcom/stripe/android/view/AddPaymentMethodCardView;->cardMultilineWidget:Lcom/stripe/android/view/CardMultilineWidget;

    invoke-virtual {p1}, Lcom/stripe/android/view/CardMultilineWidget;->getExpiryDateEditText$stripe_release()Lcom/stripe/android/view/ExpiryDateEditText;

    move-result-object p1

    .line 94
    invoke-virtual {p1, v0}, Lcom/stripe/android/view/ExpiryDateEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 95
    iget-object p1, p0, Lcom/stripe/android/view/AddPaymentMethodCardView;->cardMultilineWidget:Lcom/stripe/android/view/CardMultilineWidget;

    invoke-virtual {p1}, Lcom/stripe/android/view/CardMultilineWidget;->getCvcEditText$stripe_release()Lcom/stripe/android/view/CvcEditText;

    move-result-object p1

    .line 96
    invoke-virtual {p1, v0}, Lcom/stripe/android/view/CvcEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 97
    iget-object p1, p0, Lcom/stripe/android/view/AddPaymentMethodCardView;->cardMultilineWidget:Lcom/stripe/android/view/CardMultilineWidget;

    invoke-virtual {p1}, Lcom/stripe/android/view/CardMultilineWidget;->getPostalCodeEditText$stripe_release()Lcom/stripe/android/view/PostalCodeEditText;

    move-result-object p1

    .line 98
    invoke-virtual {p1, v0}, Lcom/stripe/android/view/PostalCodeEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method


# virtual methods
.method public getCreateParams()Lcom/stripe/android/model/PaymentMethodCreateParams;
    .registers 8
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/stripe/android/view/AddPaymentMethodCardView;->billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;

    sget-object v1, Lcom/stripe/android/view/AddPaymentMethodCardView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/android/view/BillingAddressFields;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    .line 47
    iget-object v0, p0, Lcom/stripe/android/view/AddPaymentMethodCardView;->cardMultilineWidget:Lcom/stripe/android/view/CardMultilineWidget;

    invoke-virtual {v0}, Lcom/stripe/android/view/CardMultilineWidget;->getPaymentMethodCreateParams()Lcom/stripe/android/model/PaymentMethodCreateParams;

    move-result-object v0

    goto :goto_40

    :cond_1a
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 44
    :cond_20
    iget-object v0, p0, Lcom/stripe/android/view/AddPaymentMethodCardView;->cardMultilineWidget:Lcom/stripe/android/view/CardMultilineWidget;

    invoke-virtual {v0}, Lcom/stripe/android/view/CardMultilineWidget;->getPaymentMethodCreateParams()Lcom/stripe/android/model/PaymentMethodCreateParams;

    move-result-object v0

    goto :goto_40

    .line 32
    :cond_27
    iget-object v0, p0, Lcom/stripe/android/view/AddPaymentMethodCardView;->cardMultilineWidget:Lcom/stripe/android/view/CardMultilineWidget;

    invoke-virtual {v0}, Lcom/stripe/android/view/CardMultilineWidget;->getPaymentMethodCard()Lcom/stripe/android/model/PaymentMethodCreateParams$Card;

    move-result-object v2

    .line 33
    invoke-direct {p0}, Lcom/stripe/android/view/AddPaymentMethodCardView;->getBillingDetails()Lcom/stripe/android/model/PaymentMethod$BillingDetails;

    move-result-object v3

    if-eqz v2, :cond_3f

    if-eqz v3, :cond_3f

    .line 35
    sget-object v1, Lcom/stripe/android/model/PaymentMethodCreateParams;->Companion:Lcom/stripe/android/model/PaymentMethodCreateParams$Companion;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/stripe/android/model/PaymentMethodCreateParams$Companion;->create$default(Lcom/stripe/android/model/PaymentMethodCreateParams$Companion;Lcom/stripe/android/model/PaymentMethodCreateParams$Card;Lcom/stripe/android/model/PaymentMethod$BillingDetails;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/android/model/PaymentMethodCreateParams;

    move-result-object v0

    goto :goto_40

    :cond_3f
    const/4 v0, 0x0

    :goto_40
    return-object v0
.end method

.method public setCommunicatingProgress(Z)V
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/stripe/android/view/AddPaymentMethodCardView;->cardMultilineWidget:Lcom/stripe/android/view/CardMultilineWidget;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/stripe/android/view/CardMultilineWidget;->setEnabled(Z)V

    return-void
.end method
