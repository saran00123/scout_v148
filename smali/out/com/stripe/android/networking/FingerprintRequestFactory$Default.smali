.class public final Lcom/stripe/android/networking/FingerprintRequestFactory$Default;
.super Ljava/lang/Object;
.source "FingerprintRequestFactory.kt"

# interfaces
.implements Lcom/stripe/android/networking/FingerprintRequestFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/networking/FingerprintRequestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/android/networking/FingerprintRequestFactory$Default;",
        "Lcom/stripe/android/networking/FingerprintRequestFactory;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "fingerprintRequestParamsFactory",
        "Lcom/stripe/android/networking/FingerprintRequestParamsFactory;",
        "(Lcom/stripe/android/networking/FingerprintRequestParamsFactory;)V",
        "create",
        "Lcom/stripe/android/networking/FingerprintRequest;",
        "arg",
        "Lcom/stripe/android/FingerprintData;",
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
.field private final fingerprintRequestParamsFactory:Lcom/stripe/android/networking/FingerprintRequestParamsFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lcom/stripe/android/networking/FingerprintRequestParamsFactory;

    invoke-direct {v0, p1}, Lcom/stripe/android/networking/FingerprintRequestParamsFactory;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-direct {p0, v0}, Lcom/stripe/android/networking/FingerprintRequestFactory$Default;-><init>(Lcom/stripe/android/networking/FingerprintRequestParamsFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/android/networking/FingerprintRequestParamsFactory;)V
    .registers 3
    .param p1    # Lcom/stripe/android/networking/FingerprintRequestParamsFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "fingerprintRequestParamsFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/networking/FingerprintRequestFactory$Default;->fingerprintRequestParamsFactory:Lcom/stripe/android/networking/FingerprintRequestParamsFactory;

    return-void
.end method


# virtual methods
.method public create(Lcom/stripe/android/FingerprintData;)Lcom/stripe/android/networking/FingerprintRequest;
    .registers 4
    .param p1    # Lcom/stripe/android/FingerprintData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 19
    new-instance v0, Lcom/stripe/android/networking/FingerprintRequest;

    .line 20
    iget-object v1, p0, Lcom/stripe/android/networking/FingerprintRequestFactory$Default;->fingerprintRequestParamsFactory:Lcom/stripe/android/networking/FingerprintRequestParamsFactory;

    invoke-virtual {v1, p1}, Lcom/stripe/android/networking/FingerprintRequestParamsFactory;->createParams$stripe_release(Lcom/stripe/android/FingerprintData;)Ljava/util/Map;

    move-result-object v1

    if-eqz p1, :cond_f

    .line 21
    invoke-virtual {p1}, Lcom/stripe/android/FingerprintData;->getGuid$stripe_release()Ljava/lang/String;

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const-string p1, ""

    .line 19
    :goto_15
    invoke-direct {v0, v1, p1}, Lcom/stripe/android/networking/FingerprintRequest;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method
