.class public final Lcom/stripe/android/view/PaymentFlowActivityStarter$Args$Builder;
.super Ljava/lang/Object;
.source "PaymentFlowActivityStarter.kt"

# interfaces
.implements Lcom/stripe/android/ObjectBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/view/PaymentFlowActivityStarter$Args;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/android/ObjectBuilder<",
        "Lcom/stripe/android/view/PaymentFlowActivityStarter$Args;",
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
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\r\u001a\u00020\u0002H\u0016J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0015\u0010\u0011\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u0012R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000c\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/android/view/PaymentFlowActivityStarter$Args$Builder;",
        "Lcom/stripe/android/ObjectBuilder;",
        "Lcom/stripe/android/view/PaymentFlowActivityStarter$Args;",
        "()V",
        "isPaymentSessionActive",
        "",
        "paymentSessionConfig",
        "Lcom/stripe/android/PaymentSessionConfig;",
        "paymentSessionData",
        "Lcom/stripe/android/PaymentSessionData;",
        "windowFlags",
        "",
        "Ljava/lang/Integer;",
        "build",
        "setIsPaymentSessionActive",
        "setPaymentSessionConfig",
        "setPaymentSessionData",
        "setWindowFlags",
        "(Ljava/lang/Integer;)Lcom/stripe/android/view/PaymentFlowActivityStarter$Args$Builder;",
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
.field private isPaymentSessionActive:Z

.field private paymentSessionConfig:Lcom/stripe/android/PaymentSessionConfig;

.field private paymentSessionData:Lcom/stripe/android/PaymentSessionData;

.field private windowFlags:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/stripe/android/view/PaymentFlowActivityStarter$Args;
    .registers 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/stripe/android/view/PaymentFlowActivityStarter$Args$Builder;->paymentSessionConfig:Lcom/stripe/android/PaymentSessionConfig;

    if-eqz v0, :cond_20

    .line 67
    iget-object v1, p0, Lcom/stripe/android/view/PaymentFlowActivityStarter$Args$Builder;->paymentSessionData:Lcom/stripe/android/PaymentSessionData;

    if-eqz v1, :cond_12

    .line 70
    iget-boolean v2, p0, Lcom/stripe/android/view/PaymentFlowActivityStarter$Args$Builder;->isPaymentSessionActive:Z

    .line 71
    iget-object v3, p0, Lcom/stripe/android/view/PaymentFlowActivityStarter$Args$Builder;->windowFlags:Ljava/lang/Integer;

    .line 63
    new-instance v4, Lcom/stripe/android/view/PaymentFlowActivityStarter$Args;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/stripe/android/view/PaymentFlowActivityStarter$Args;-><init>(Lcom/stripe/android/PaymentSessionConfig;Lcom/stripe/android/PaymentSessionData;ZLjava/lang/Integer;)V

    return-object v4

    .line 67
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PaymentFlowActivity launched without PaymentSessionData"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 64
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PaymentFlowActivity launched without PaymentSessionConfig"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/stripe/android/view/PaymentFlowActivityStarter$Args$Builder;->build()Lcom/stripe/android/view/PaymentFlowActivityStarter$Args;

    move-result-object v0

    return-object v0
.end method

.method public final setIsPaymentSessionActive(Z)Lcom/stripe/android/view/PaymentFlowActivityStarter$Args$Builder;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 49
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/view/PaymentFlowActivityStarter$Args$Builder;

    .line 50
    iput-boolean p1, v0, Lcom/stripe/android/view/PaymentFlowActivityStarter$Args$Builder;->isPaymentSessionActive:Z

    return-object v0
.end method

.method public final setPaymentSessionConfig(Lcom/stripe/android/PaymentSessionConfig;)Lcom/stripe/android/view/PaymentFlowActivityStarter$Args$Builder;
    .registers 3
    .param p1    # Lcom/stripe/android/PaymentSessionConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 41
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/view/PaymentFlowActivityStarter$Args$Builder;

    .line 42
    iput-object p1, v0, Lcom/stripe/android/view/PaymentFlowActivityStarter$Args$Builder;->paymentSessionConfig:Lcom/stripe/android/PaymentSessionConfig;

    return-object v0
.end method

.method public final setPaymentSessionData(Lcom/stripe/android/PaymentSessionData;)Lcom/stripe/android/view/PaymentFlowActivityStarter$Args$Builder;
    .registers 3
    .param p1    # Lcom/stripe/android/PaymentSessionData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 45
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/view/PaymentFlowActivityStarter$Args$Builder;

    .line 46
    iput-object p1, v0, Lcom/stripe/android/view/PaymentFlowActivityStarter$Args$Builder;->paymentSessionData:Lcom/stripe/android/PaymentSessionData;

    return-object v0
.end method

.method public final setWindowFlags(Ljava/lang/Integer;)Lcom/stripe/android/view/PaymentFlowActivityStarter$Args$Builder;
    .registers 3
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 58
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/view/PaymentFlowActivityStarter$Args$Builder;

    .line 59
    iput-object p1, v0, Lcom/stripe/android/view/PaymentFlowActivityStarter$Args$Builder;->windowFlags:Ljava/lang/Integer;

    return-object v0
.end method
