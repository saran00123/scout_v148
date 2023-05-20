.class public final Lcom/stripe/android/PaymentRelayStarter$Companion;
.super Ljava/lang/Object;
.source "PaymentRelayStarter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/PaymentRelayStarter;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001d\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/android/PaymentRelayStarter$Companion;",
        "",
        "()V",
        "create",
        "Lcom/stripe/android/PaymentRelayStarter;",
        "host",
        "Lcom/stripe/android/view/AuthActivityStarter$Host;",
        "requestCode",
        "",
        "create$stripe_release",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/stripe/android/PaymentRelayStarter$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Lcom/stripe/android/PaymentRelayStarter$Companion;

    invoke-direct {v0}, Lcom/stripe/android/PaymentRelayStarter$Companion;-><init>()V

    sput-object v0, Lcom/stripe/android/PaymentRelayStarter$Companion;->$$INSTANCE:Lcom/stripe/android/PaymentRelayStarter$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create$stripe_release(Lcom/stripe/android/view/AuthActivityStarter$Host;I)Lcom/stripe/android/PaymentRelayStarter;
    .registers 4

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/stripe/android/PaymentRelayStarter$Companion$create$1;

    invoke-direct {v0, p1, p2}, Lcom/stripe/android/PaymentRelayStarter$Companion$create$1;-><init>(Lcom/stripe/android/view/AuthActivityStarter$Host;I)V

    check-cast v0, Lcom/stripe/android/PaymentRelayStarter;

    return-object v0
.end method
