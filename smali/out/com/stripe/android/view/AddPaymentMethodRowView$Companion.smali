.class public final Lcom/stripe/android/view/AddPaymentMethodRowView$Companion;
.super Ljava/lang/Object;
.source "AddPaymentMethodRowView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/view/AddPaymentMethodRowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001d\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u0008\tJ\u001d\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/android/view/AddPaymentMethodRowView$Companion;",
        "",
        "()V",
        "createCard",
        "Lcom/stripe/android/view/AddPaymentMethodRowView;",
        "activity",
        "Landroid/app/Activity;",
        "args",
        "Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;",
        "createCard$stripe_release",
        "createFpx",
        "createFpx$stripe_release",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 49
    invoke-direct {p0}, Lcom/stripe/android/view/AddPaymentMethodRowView$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createCard$stripe_release(Landroid/app/Activity;Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;)Lcom/stripe/android/view/AddPaymentMethodRowView;
    .registers 10
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/stripe/android/view/AddPaymentMethodRowView;

    .line 55
    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    .line 56
    sget v3, Lcom/stripe/android/R$id;->stripe_payment_methods_add_card:I

    .line 57
    sget v4, Lcom/stripe/android/R$string;->payment_method_add_new_card:I

    .line 58
    new-instance p1, Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args$Builder;

    invoke-direct {p1}, Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args$Builder;-><init>()V

    .line 59
    invoke-virtual {p2}, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->getBillingAddressFields$stripe_release()Lcom/stripe/android/view/BillingAddressFields;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args$Builder;->setBillingAddressFields(Lcom/stripe/android/view/BillingAddressFields;)Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args$Builder;

    move-result-object p1

    const/4 v1, 0x1

    .line 60
    invoke-virtual {p1, v1}, Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args$Builder;->setShouldAttachToCustomer(Z)Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args$Builder;

    move-result-object p1

    .line 61
    invoke-virtual {p2}, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->isPaymentSessionActive$stripe_release()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args$Builder;->setIsPaymentSessionActive$stripe_release(Z)Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args$Builder;

    move-result-object p1

    .line 62
    sget-object v1, Lcom/stripe/android/model/PaymentMethod$Type;->Card:Lcom/stripe/android/model/PaymentMethod$Type;

    invoke-virtual {p1, v1}, Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args$Builder;->setPaymentMethodType(Lcom/stripe/android/model/PaymentMethod$Type;)Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args$Builder;

    move-result-object p1

    .line 63
    invoke-virtual {p2}, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->getAddPaymentMethodFooterLayoutId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args$Builder;->setAddPaymentMethodFooter(I)Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args$Builder;

    move-result-object p1

    .line 64
    invoke-virtual {p2}, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->getPaymentConfiguration$stripe_release()Lcom/stripe/android/PaymentConfiguration;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args$Builder;->setPaymentConfiguration$stripe_release(Lcom/stripe/android/PaymentConfiguration;)Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args$Builder;

    move-result-object p1

    .line 65
    invoke-virtual {p2}, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->getWindowFlags$stripe_release()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args$Builder;->setWindowFlags(Ljava/lang/Integer;)Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args$Builder;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args$Builder;->build()Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v0

    .line 54
    invoke-direct/range {v1 .. v6}, Lcom/stripe/android/view/AddPaymentMethodRowView;-><init>(Landroid/content/Context;IILcom/stripe/android/view/AddPaymentMethodActivityStarter$Args;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final createFpx$stripe_release(Landroid/app/Activity;Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;)Lcom/stripe/android/view/AddPaymentMethodRowView;
    .registers 10
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/stripe/android/view/AddPaymentMethodRowView;

    .line 75
    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    .line 76
    sget v3, Lcom/stripe/android/R$id;->stripe_payment_methods_add_fpx:I

    .line 77
    sget v4, Lcom/stripe/android/R$string;->payment_method_add_new_fpx:I

    .line 78
    new-instance p1, Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args$Builder;

    invoke-direct {p1}, Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args$Builder;-><init>()V

    .line 79
    invoke-virtual {p2}, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->isPaymentSessionActive$stripe_release()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args$Builder;->setIsPaymentSessionActive$stripe_release(Z)Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args$Builder;

    move-result-object p1

    .line 80
    sget-object v1, Lcom/stripe/android/model/PaymentMethod$Type;->Fpx:Lcom/stripe/android/model/PaymentMethod$Type;

    invoke-virtual {p1, v1}, Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args$Builder;->setPaymentMethodType(Lcom/stripe/android/model/PaymentMethod$Type;)Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args$Builder;

    move-result-object p1

    .line 81
    invoke-virtual {p2}, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->getPaymentConfiguration$stripe_release()Lcom/stripe/android/PaymentConfiguration;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args$Builder;->setPaymentConfiguration$stripe_release(Lcom/stripe/android/PaymentConfiguration;)Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args$Builder;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args$Builder;->build()Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v0

    .line 74
    invoke-direct/range {v1 .. v6}, Lcom/stripe/android/view/AddPaymentMethodRowView;-><init>(Landroid/content/Context;IILcom/stripe/android/view/AddPaymentMethodActivityStarter$Args;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
