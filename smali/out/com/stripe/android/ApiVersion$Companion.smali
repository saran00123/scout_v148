.class public final Lcom/stripe/android/ApiVersion$Companion;
.super Ljava/lang/Object;
.source "ApiVersion.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/ApiVersion;
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
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\r\u0010\u0007\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/android/ApiVersion$Companion;",
        "",
        "()V",
        "API_VERSION_CODE",
        "",
        "INSTANCE",
        "Lcom/stripe/android/ApiVersion;",
        "get",
        "get$stripe_release",
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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/stripe/android/ApiVersion$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get$stripe_release()Lcom/stripe/android/ApiVersion;
    .registers 2

    .line 25
    invoke-static {}, Lcom/stripe/android/ApiVersion;->access$getINSTANCE$cp()Lcom/stripe/android/ApiVersion;

    move-result-object v0

    return-object v0
.end method
