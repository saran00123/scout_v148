.class public final Lcom/stripe/android/cards/DefaultStaticCardAccountRanges$Companion;
.super Ljava/lang/Object;
.source "DefaultStaticCardAccountRanges.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/cards/DefaultStaticCardAccountRanges;
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0007R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/android/cards/DefaultStaticCardAccountRanges$Companion;",
        "",
        "()V",
        "ACCOUNTS",
        "",
        "Lcom/stripe/android/model/AccountRange;",
        "getACCOUNTS$stripe_release",
        "()Ljava/util/List;",
        "AMEX_ACCOUNTS",
        "DINERSCLUB14_ACCOUNT_RANGES",
        "DINERSCLUB16_ACCOUNT_RANGES",
        "DISCOVER_ACCOUNTS",
        "getDISCOVER_ACCOUNTS$stripe_release",
        "JCB_ACCOUNTS",
        "MASTERCARD_ACCOUNTS",
        "UNIONPAY_ACCOUNTS",
        "VISA_ACCOUNTS",
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

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Lcom/stripe/android/cards/DefaultStaticCardAccountRanges$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getACCOUNTS$stripe_release()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/android/model/AccountRange;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 156
    invoke-static {}, Lcom/stripe/android/cards/DefaultStaticCardAccountRanges;->access$getACCOUNTS$cp()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getDISCOVER_ACCOUNTS$stripe_release()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/android/model/AccountRange;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 66
    invoke-static {}, Lcom/stripe/android/cards/DefaultStaticCardAccountRanges;->access$getDISCOVER_ACCOUNTS$cp()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
