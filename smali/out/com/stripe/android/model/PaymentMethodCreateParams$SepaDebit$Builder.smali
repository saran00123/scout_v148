.class public final Lcom/stripe/android/model/PaymentMethodCreateParams$SepaDebit$Builder;
.super Ljava/lang/Object;
.source "PaymentMethodCreateParams.kt"

# interfaces
.implements Lcom/stripe/android/ObjectBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/model/PaymentMethodCreateParams$SepaDebit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/android/ObjectBuilder<",
        "Lcom/stripe/android/model/PaymentMethodCreateParams$SepaDebit;",
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/android/model/PaymentMethodCreateParams$SepaDebit$Builder;",
        "Lcom/stripe/android/ObjectBuilder;",
        "Lcom/stripe/android/model/PaymentMethodCreateParams$SepaDebit;",
        "()V",
        "iban",
        "",
        "build",
        "setIban",
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
.field private iban:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/stripe/android/model/PaymentMethodCreateParams$SepaDebit;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 366
    new-instance v0, Lcom/stripe/android/model/PaymentMethodCreateParams$SepaDebit;

    iget-object v1, p0, Lcom/stripe/android/model/PaymentMethodCreateParams$SepaDebit$Builder;->iban:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/stripe/android/model/PaymentMethodCreateParams$SepaDebit;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 358
    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentMethodCreateParams$SepaDebit$Builder;->build()Lcom/stripe/android/model/PaymentMethodCreateParams$SepaDebit;

    move-result-object v0

    return-object v0
.end method

.method public final setIban(Ljava/lang/String;)Lcom/stripe/android/model/PaymentMethodCreateParams$SepaDebit$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 361
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/PaymentMethodCreateParams$SepaDebit$Builder;

    .line 362
    iput-object p1, v0, Lcom/stripe/android/model/PaymentMethodCreateParams$SepaDebit$Builder;->iban:Ljava/lang/String;

    return-object v0
.end method
