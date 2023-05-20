.class public final Lcom/stripe/android/PaymentSession$Companion;
.super Ljava/lang/Object;
.source "PaymentSession.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/PaymentSession;
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
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0008H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/android/PaymentSession$Companion;",
        "",
        "()V",
        "EXTRA_PAYMENT_SESSION_DATA",
        "",
        "PRODUCT_TOKEN",
        "VALID_REQUEST_CODES",
        "",
        "",
        "isValidRequestCode",
        "",
        "requestCode",
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

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 332
    invoke-direct {p0}, Lcom/stripe/android/PaymentSession$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$isValidRequestCode(Lcom/stripe/android/PaymentSession$Companion;I)Z
    .registers 2

    .line 332
    invoke-direct {p0, p1}, Lcom/stripe/android/PaymentSession$Companion;->isValidRequestCode(I)Z

    move-result p0

    return p0
.end method

.method private final isValidRequestCode(I)Z
    .registers 3

    .line 339
    invoke-static {}, Lcom/stripe/android/PaymentSession;->access$getVALID_REQUEST_CODES$cp()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
