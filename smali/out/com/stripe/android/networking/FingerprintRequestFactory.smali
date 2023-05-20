.class public interface abstract Lcom/stripe/android/networking/FingerprintRequestFactory;
.super Ljava/lang/Object;
.source "FingerprintRequestFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/networking/FingerprintRequestFactory$Default;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008`\u0018\u00002\u00020\u0001:\u0001\u0006J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/android/networking/FingerprintRequestFactory;",
        "",
        "create",
        "Lcom/stripe/android/networking/FingerprintRequest;",
        "arg",
        "Lcom/stripe/android/FingerprintData;",
        "Default",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# virtual methods
.method public abstract create(Lcom/stripe/android/FingerprintData;)Lcom/stripe/android/networking/FingerprintRequest;
    .param p1    # Lcom/stripe/android/FingerprintData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
