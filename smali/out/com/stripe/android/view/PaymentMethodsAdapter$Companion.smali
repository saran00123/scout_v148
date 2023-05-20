.class public final Lcom/stripe/android/view/PaymentMethodsAdapter$Companion;
.super Ljava/lang/Object;
.source "PaymentMethodsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/view/PaymentMethodsAdapter;
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/android/view/PaymentMethodsAdapter$Companion;",
        "",
        "()V",
        "GOOGLE_PAY_ITEM_ID",
        "",
        "getGOOGLE_PAY_ITEM_ID$stripe_release",
        "()J",
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

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 334
    invoke-direct {p0}, Lcom/stripe/android/view/PaymentMethodsAdapter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getGOOGLE_PAY_ITEM_ID$stripe_release()J
    .registers 3

    .line 335
    invoke-static {}, Lcom/stripe/android/view/PaymentMethodsAdapter;->access$getGOOGLE_PAY_ITEM_ID$cp()J

    move-result-wide v0

    return-wide v0
.end method
