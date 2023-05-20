.class public final Lcom/stripe/android/model/PaymentMethodCreateParams$Ideal$Builder;
.super Ljava/lang/Object;
.source "PaymentMethodCreateParams.kt"

# interfaces
.implements Lcom/stripe/android/ObjectBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/model/PaymentMethodCreateParams$Ideal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/android/ObjectBuilder<",
        "Lcom/stripe/android/model/PaymentMethodCreateParams$Ideal;",
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/android/model/PaymentMethodCreateParams$Ideal$Builder;",
        "Lcom/stripe/android/ObjectBuilder;",
        "Lcom/stripe/android/model/PaymentMethodCreateParams$Ideal;",
        "()V",
        "bank",
        "",
        "getBank$stripe_release",
        "()Ljava/lang/String;",
        "setBank$stripe_release",
        "(Ljava/lang/String;)V",
        "build",
        "setBank",
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
.field private bank:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/stripe/android/model/PaymentMethodCreateParams$Ideal;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 297
    new-instance v0, Lcom/stripe/android/model/PaymentMethodCreateParams$Ideal;

    iget-object v1, p0, Lcom/stripe/android/model/PaymentMethodCreateParams$Ideal$Builder;->bank:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/stripe/android/model/PaymentMethodCreateParams$Ideal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 289
    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentMethodCreateParams$Ideal$Builder;->build()Lcom/stripe/android/model/PaymentMethodCreateParams$Ideal;

    move-result-object v0

    return-object v0
.end method

.method public final getBank$stripe_release()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/stripe/android/model/PaymentMethodCreateParams$Ideal$Builder;->bank:Ljava/lang/String;

    return-object v0
.end method

.method public final setBank(Ljava/lang/String;)Lcom/stripe/android/model/PaymentMethodCreateParams$Ideal$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 292
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/PaymentMethodCreateParams$Ideal$Builder;

    .line 293
    iput-object p1, v0, Lcom/stripe/android/model/PaymentMethodCreateParams$Ideal$Builder;->bank:Ljava/lang/String;

    return-object v0
.end method

.method public final setBank$stripe_release(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 290
    iput-object p1, p0, Lcom/stripe/android/model/PaymentMethodCreateParams$Ideal$Builder;->bank:Ljava/lang/String;

    return-void
.end method
