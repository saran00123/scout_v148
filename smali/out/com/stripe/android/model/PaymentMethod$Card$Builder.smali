.class public final Lcom/stripe/android/model/PaymentMethod$Card$Builder;
.super Ljava/lang/Object;
.source "PaymentMethod.kt"

# interfaces
.implements Lcom/stripe/android/ObjectBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/model/PaymentMethod$Card;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/android/ObjectBuilder<",
        "Lcom/stripe/android/model/PaymentMethod$Card;",
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
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0014\u001a\u00020\u0002H\u0016J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0016\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0017\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0015\u0010\u0018\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u0019J\u0015\u0010\u001a\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u0019J\u0010\u0010\u001b\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u001c\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u001d\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u001e\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u0012\u0010\r\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/stripe/android/model/PaymentMethod$Card$Builder;",
        "Lcom/stripe/android/ObjectBuilder;",
        "Lcom/stripe/android/model/PaymentMethod$Card;",
        "()V",
        "brand",
        "Lcom/stripe/android/model/CardBrand;",
        "checks",
        "Lcom/stripe/android/model/PaymentMethod$Card$Checks;",
        "country",
        "",
        "expiryMonth",
        "",
        "Ljava/lang/Integer;",
        "expiryYear",
        "funding",
        "last4",
        "threeDSecureUsage",
        "Lcom/stripe/android/model/PaymentMethod$Card$ThreeDSecureUsage;",
        "wallet",
        "Lcom/stripe/android/model/wallets/Wallet;",
        "build",
        "setBrand",
        "setChecks",
        "setCountry",
        "setExpiryMonth",
        "(Ljava/lang/Integer;)Lcom/stripe/android/model/PaymentMethod$Card$Builder;",
        "setExpiryYear",
        "setFunding",
        "setLast4",
        "setThreeDSecureUsage",
        "setWallet",
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
.field private brand:Lcom/stripe/android/model/CardBrand;

.field private checks:Lcom/stripe/android/model/PaymentMethod$Card$Checks;

.field private country:Ljava/lang/String;

.field private expiryMonth:Ljava/lang/Integer;

.field private expiryYear:Ljava/lang/Integer;

.field private funding:Ljava/lang/String;

.field private last4:Ljava/lang/String;

.field private threeDSecureUsage:Lcom/stripe/android/model/PaymentMethod$Card$ThreeDSecureUsage;

.field private wallet:Lcom/stripe/android/model/wallets/Wallet;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    sget-object v0, Lcom/stripe/android/model/CardBrand;->Unknown:Lcom/stripe/android/model/CardBrand;

    iput-object v0, p0, Lcom/stripe/android/model/PaymentMethod$Card$Builder;->brand:Lcom/stripe/android/model/CardBrand;

    return-void
.end method


# virtual methods
.method public build()Lcom/stripe/android/model/PaymentMethod$Card;
    .registers 15
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 499
    new-instance v13, Lcom/stripe/android/model/PaymentMethod$Card;

    .line 500
    iget-object v1, p0, Lcom/stripe/android/model/PaymentMethod$Card$Builder;->brand:Lcom/stripe/android/model/CardBrand;

    .line 501
    iget-object v2, p0, Lcom/stripe/android/model/PaymentMethod$Card$Builder;->checks:Lcom/stripe/android/model/PaymentMethod$Card$Checks;

    .line 502
    iget-object v3, p0, Lcom/stripe/android/model/PaymentMethod$Card$Builder;->country:Ljava/lang/String;

    .line 503
    iget-object v4, p0, Lcom/stripe/android/model/PaymentMethod$Card$Builder;->expiryMonth:Ljava/lang/Integer;

    .line 504
    iget-object v5, p0, Lcom/stripe/android/model/PaymentMethod$Card$Builder;->expiryYear:Ljava/lang/Integer;

    .line 505
    iget-object v6, p0, Lcom/stripe/android/model/PaymentMethod$Card$Builder;->funding:Ljava/lang/String;

    .line 506
    iget-object v7, p0, Lcom/stripe/android/model/PaymentMethod$Card$Builder;->last4:Ljava/lang/String;

    .line 507
    iget-object v8, p0, Lcom/stripe/android/model/PaymentMethod$Card$Builder;->threeDSecureUsage:Lcom/stripe/android/model/PaymentMethod$Card$ThreeDSecureUsage;

    .line 508
    iget-object v9, p0, Lcom/stripe/android/model/PaymentMethod$Card$Builder;->wallet:Lcom/stripe/android/model/wallets/Wallet;

    const/4 v10, 0x0

    const/16 v11, 0x200

    const/4 v12, 0x0

    move-object v0, v13

    .line 499
    invoke-direct/range {v0 .. v12}, Lcom/stripe/android/model/PaymentMethod$Card;-><init>(Lcom/stripe/android/model/CardBrand;Lcom/stripe/android/model/PaymentMethod$Card$Checks;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/PaymentMethod$Card$ThreeDSecureUsage;Lcom/stripe/android/model/wallets/Wallet;Lcom/stripe/android/model/PaymentMethod$Card$Networks;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v13
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 451
    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentMethod$Card$Builder;->build()Lcom/stripe/android/model/PaymentMethod$Card;

    move-result-object v0

    return-object v0
.end method

.method public final setBrand(Lcom/stripe/android/model/CardBrand;)Lcom/stripe/android/model/PaymentMethod$Card$Builder;
    .registers 3
    .param p1    # Lcom/stripe/android/model/CardBrand;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "brand"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/PaymentMethod$Card$Builder;

    .line 463
    iput-object p1, v0, Lcom/stripe/android/model/PaymentMethod$Card$Builder;->brand:Lcom/stripe/android/model/CardBrand;

    return-object v0
.end method

.method public final setChecks(Lcom/stripe/android/model/PaymentMethod$Card$Checks;)Lcom/stripe/android/model/PaymentMethod$Card$Builder;
    .registers 3
    .param p1    # Lcom/stripe/android/model/PaymentMethod$Card$Checks;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 466
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/PaymentMethod$Card$Builder;

    .line 467
    iput-object p1, v0, Lcom/stripe/android/model/PaymentMethod$Card$Builder;->checks:Lcom/stripe/android/model/PaymentMethod$Card$Checks;

    return-object v0
.end method

.method public final setCountry(Ljava/lang/String;)Lcom/stripe/android/model/PaymentMethod$Card$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 470
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/PaymentMethod$Card$Builder;

    .line 471
    iput-object p1, v0, Lcom/stripe/android/model/PaymentMethod$Card$Builder;->country:Ljava/lang/String;

    return-object v0
.end method

.method public final setExpiryMonth(Ljava/lang/Integer;)Lcom/stripe/android/model/PaymentMethod$Card$Builder;
    .registers 3
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 474
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/PaymentMethod$Card$Builder;

    .line 475
    iput-object p1, v0, Lcom/stripe/android/model/PaymentMethod$Card$Builder;->expiryMonth:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setExpiryYear(Ljava/lang/Integer;)Lcom/stripe/android/model/PaymentMethod$Card$Builder;
    .registers 3
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 478
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/PaymentMethod$Card$Builder;

    .line 479
    iput-object p1, v0, Lcom/stripe/android/model/PaymentMethod$Card$Builder;->expiryYear:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setFunding(Ljava/lang/String;)Lcom/stripe/android/model/PaymentMethod$Card$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 482
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/PaymentMethod$Card$Builder;

    .line 483
    iput-object p1, v0, Lcom/stripe/android/model/PaymentMethod$Card$Builder;->funding:Ljava/lang/String;

    return-object v0
.end method

.method public final setLast4(Ljava/lang/String;)Lcom/stripe/android/model/PaymentMethod$Card$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 486
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/PaymentMethod$Card$Builder;

    .line 487
    iput-object p1, v0, Lcom/stripe/android/model/PaymentMethod$Card$Builder;->last4:Ljava/lang/String;

    return-object v0
.end method

.method public final setThreeDSecureUsage(Lcom/stripe/android/model/PaymentMethod$Card$ThreeDSecureUsage;)Lcom/stripe/android/model/PaymentMethod$Card$Builder;
    .registers 3
    .param p1    # Lcom/stripe/android/model/PaymentMethod$Card$ThreeDSecureUsage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 490
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/PaymentMethod$Card$Builder;

    .line 491
    iput-object p1, v0, Lcom/stripe/android/model/PaymentMethod$Card$Builder;->threeDSecureUsage:Lcom/stripe/android/model/PaymentMethod$Card$ThreeDSecureUsage;

    return-object v0
.end method

.method public final setWallet(Lcom/stripe/android/model/wallets/Wallet;)Lcom/stripe/android/model/PaymentMethod$Card$Builder;
    .registers 3
    .param p1    # Lcom/stripe/android/model/wallets/Wallet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 494
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/PaymentMethod$Card$Builder;

    .line 495
    iput-object p1, v0, Lcom/stripe/android/model/PaymentMethod$Card$Builder;->wallet:Lcom/stripe/android/model/wallets/Wallet;

    return-object v0
.end method
