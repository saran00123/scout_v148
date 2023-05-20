.class public interface abstract Lcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;
.super Ljava/lang/Object;
.source "PaymentSessionConfig.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/PaymentSessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ShippingInformationValidator"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H\'\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;",
        "Ljava/io/Serializable;",
        "getErrorMessage",
        "",
        "shippingInformation",
        "Lcom/stripe/android/model/ShippingInformation;",
        "isValid",
        "",
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
.method public abstract getErrorMessage(Lcom/stripe/android/model/ShippingInformation;)Ljava/lang/String;
    .param p1    # Lcom/stripe/android/model/ShippingInformation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract isValid(Lcom/stripe/android/model/ShippingInformation;)Z
    .param p1    # Lcom/stripe/android/model/ShippingInformation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method
