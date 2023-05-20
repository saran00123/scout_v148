.class public interface abstract Lcom/stripe/android/FingerprintDataRepository;
.super Ljava/lang/Object;
.source "FingerprintDataRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/FingerprintDataRepository$Default;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008`\u0018\u00002\u00020\u0001:\u0001\u0008J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0003H&\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/android/FingerprintDataRepository;",
        "",
        "get",
        "Lcom/stripe/android/FingerprintData;",
        "refresh",
        "",
        "save",
        "fingerprintData",
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
.method public abstract get()Lcom/stripe/android/FingerprintData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract refresh()V
.end method

.method public abstract save(Lcom/stripe/android/FingerprintData;)V
    .param p1    # Lcom/stripe/android/FingerprintData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
