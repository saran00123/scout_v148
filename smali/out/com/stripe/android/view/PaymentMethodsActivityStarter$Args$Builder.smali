.class public final Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;
.super Ljava/lang/Object;
.source "PaymentMethodsActivityStarter.kt"

# interfaces
.implements Lcom/stripe/android/ObjectBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/android/ObjectBuilder<",
        "Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;",
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
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0017\u001a\u00020\u0002H\u0016J\u0010\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u0010\u0010\u001b\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\tJ\u0010\u0010\u001d\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0014\u0010\u001e\u001a\u00020\u00002\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010J\u0010\u0010\u001f\u001a\u00020\u00002\u0008\u0008\u0001\u0010\u0012\u001a\u00020\u0005J\u000e\u0010 \u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\tJ\u0015\u0010!\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\tH\u0000\u00a2\u0006\u0002\u0008\"J\u0015\u0010#\u001a\u00020\u00002\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010$R\u0012\u0010\u0004\u001a\u00020\u00058\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00058\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0016\u00a8\u0006%"
    }
    d2 = {
        "Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;",
        "Lcom/stripe/android/ObjectBuilder;",
        "Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;",
        "()V",
        "addPaymentMethodFooterLayoutId",
        "",
        "billingAddressFields",
        "Lcom/stripe/android/view/BillingAddressFields;",
        "canDeletePaymentMethods",
        "",
        "initialPaymentMethodId",
        "",
        "isPaymentSessionActive",
        "paymentConfiguration",
        "Lcom/stripe/android/PaymentConfiguration;",
        "paymentMethodTypes",
        "",
        "Lcom/stripe/android/model/PaymentMethod$Type;",
        "paymentMethodsFooterLayoutId",
        "shouldShowGooglePay",
        "useGooglePay",
        "windowFlags",
        "Ljava/lang/Integer;",
        "build",
        "setAddPaymentMethodFooter",
        "setBillingAddressFields",
        "setCanDeletePaymentMethods",
        "setInitialPaymentMethodId",
        "setIsPaymentSessionActive",
        "setPaymentConfiguration",
        "setPaymentMethodTypes",
        "setPaymentMethodsFooter",
        "setShouldShowGooglePay",
        "setUseGooglePay",
        "setUseGooglePay$stripe_release",
        "setWindowFlags",
        "(Ljava/lang/Integer;)Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;",
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

.field private billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;

.field private canDeletePaymentMethods:Z

.field private initialPaymentMethodId:Ljava/lang/String;

.field private isPaymentSessionActive:Z

.field private paymentConfiguration:Lcom/stripe/android/PaymentConfiguration;

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

.field private shouldShowGooglePay:Z

.field private useGooglePay:Z

.field private windowFlags:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Lcom/stripe/android/view/BillingAddressFields;->PostalCode:Lcom/stripe/android/view/BillingAddressFields;

    iput-object v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;->billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;->canDeletePaymentMethods:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;
    .registers 14
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 158
    new-instance v12, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;

    .line 159
    iget-object v1, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;->initialPaymentMethodId:Ljava/lang/String;

    .line 160
    iget-boolean v4, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;->isPaymentSessionActive:Z

    .line 161
    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;->paymentMethodTypes:Ljava/util/List;

    if-eqz v0, :cond_b

    goto :goto_11

    :cond_b
    sget-object v0, Lcom/stripe/android/model/PaymentMethod$Type;->Card:Lcom/stripe/android/model/PaymentMethod$Type;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_11
    move-object v5, v0

    .line 162
    iget-boolean v9, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;->shouldShowGooglePay:Z

    .line 163
    iget-boolean v10, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;->useGooglePay:Z

    .line 164
    iget-object v6, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;->paymentConfiguration:Lcom/stripe/android/PaymentConfiguration;

    .line 165
    iget v2, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;->paymentMethodsFooterLayoutId:I

    .line 166
    iget v3, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;->addPaymentMethodFooterLayoutId:I

    .line 167
    iget-object v7, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;->windowFlags:Ljava/lang/Integer;

    .line 168
    iget-object v8, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;->billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;

    .line 169
    iget-boolean v11, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;->canDeletePaymentMethods:Z

    move-object v0, v12

    .line 158
    invoke-direct/range {v0 .. v11}, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;-><init>(Ljava/lang/String;IIZLjava/util/List;Lcom/stripe/android/PaymentConfiguration;Ljava/lang/Integer;Lcom/stripe/android/view/BillingAddressFields;ZZZ)V

    return-object v12
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 54
    invoke-virtual {p0}, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;->build()Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;

    move-result-object v0

    return-object v0
.end method

.method public final setAddPaymentMethodFooter(I)Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;
    .registers 3
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 136
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;

    .line 137
    iput p1, v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;->addPaymentMethodFooterLayoutId:I

    return-object v0
.end method

.method public final setBillingAddressFields(Lcom/stripe/android/view/BillingAddressFields;)Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;
    .registers 3
    .param p1    # Lcom/stripe/android/view/BillingAddressFields;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "billingAddressFields"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;

    .line 77
    iput-object p1, v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;->billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;

    return-object v0
.end method

.method public final setCanDeletePaymentMethods(Z)Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 153
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;

    .line 154
    iput-boolean p1, v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;->canDeletePaymentMethods:Z

    return-object v0
.end method

.method public final setInitialPaymentMethodId(Ljava/lang/String;)Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 80
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;

    .line 81
    iput-object p1, v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;->initialPaymentMethodId:Ljava/lang/String;

    return-object v0
.end method

.method public final setIsPaymentSessionActive(Z)Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 84
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;

    .line 85
    iput-boolean p1, v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;->isPaymentSessionActive:Z

    return-object v0
.end method

.method public final setPaymentConfiguration(Lcom/stripe/android/PaymentConfiguration;)Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;
    .registers 3
    .param p1    # Lcom/stripe/android/PaymentConfiguration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 90
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;

    .line 91
    iput-object p1, v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;->paymentConfiguration:Lcom/stripe/android/PaymentConfiguration;

    return-object v0
.end method

.method public final setPaymentMethodTypes(Ljava/util/List;)Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;
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
            "Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "paymentMethodTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;

    .line 108
    iput-object p1, v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;->paymentMethodTypes:Ljava/util/List;

    return-object v0
.end method

.method public final setPaymentMethodsFooter(I)Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;
    .registers 3
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 126
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;

    .line 127
    iput p1, v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;->paymentMethodsFooterLayoutId:I

    return-object v0
.end method

.method public final setShouldShowGooglePay(Z)Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 116
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;

    .line 117
    iput-boolean p1, v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;->shouldShowGooglePay:Z

    return-object v0
.end method

.method public final setUseGooglePay$stripe_release(Z)Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 149
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;

    .line 150
    iput-boolean p1, v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;->useGooglePay:Z

    return-object v0
.end method

.method public final setWindowFlags(Ljava/lang/Integer;)Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;
    .registers 3
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 145
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;

    .line 146
    iput-object p1, v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;->windowFlags:Ljava/lang/Integer;

    return-object v0
.end method
