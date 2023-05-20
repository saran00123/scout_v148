.class public final Lcom/stripe/android/Stripe$Companion;
.super Ljava/lang/Object;
.source "Stripe.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/Stripe;
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
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\t\u0010\u0002\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR&\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0010\u0010\u0002\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/android/Stripe$Companion;",
        "",
        "()V",
        "API_VERSION",
        "",
        "VERSION",
        "VERSION_NAME",
        "advancedFraudSignalsEnabled",
        "",
        "getAdvancedFraudSignalsEnabled$annotations",
        "getAdvancedFraudSignalsEnabled",
        "()Z",
        "setAdvancedFraudSignalsEnabled",
        "(Z)V",
        "appInfo",
        "Lcom/stripe/android/AppInfo;",
        "getAppInfo$annotations",
        "getAppInfo",
        "()Lcom/stripe/android/AppInfo;",
        "setAppInfo",
        "(Lcom/stripe/android/AppInfo;)V",
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

    .line 1667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1667
    invoke-direct {p0}, Lcom/stripe/android/Stripe$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getAdvancedFraudSignalsEnabled$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static synthetic getAppInfo$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getAdvancedFraudSignalsEnabled()Z
    .registers 2

    .line 1693
    invoke-static {}, Lcom/stripe/android/Stripe;->access$getAdvancedFraudSignalsEnabled$cp()Z

    move-result v0

    return v0
.end method

.method public final getAppInfo()Lcom/stripe/android/AppInfo;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1680
    invoke-static {}, Lcom/stripe/android/Stripe;->access$getAppInfo$cp()Lcom/stripe/android/AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public final setAdvancedFraudSignalsEnabled(Z)V
    .registers 2

    .line 1693
    invoke-static {p1}, Lcom/stripe/android/Stripe;->access$setAdvancedFraudSignalsEnabled$cp(Z)V

    return-void
.end method

.method public final setAppInfo(Lcom/stripe/android/AppInfo;)V
    .registers 2
    .param p1    # Lcom/stripe/android/AppInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1680
    invoke-static {p1}, Lcom/stripe/android/Stripe;->access$setAppInfo$cp(Lcom/stripe/android/AppInfo;)V

    return-void
.end method
