.class public interface abstract Lcom/stripe/android/PaymentRelayStarter;
.super Ljava/lang/Object;
.source "PaymentRelayStarter.kt"

# interfaces
.implements Lcom/stripe/android/view/AuthActivityStarter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/PaymentRelayStarter$Args;,
        Lcom/stripe/android/PaymentRelayStarter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/android/view/AuthActivityStarter<",
        "Lcom/stripe/android/PaymentRelayStarter$Args;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008`\u0018\u0000 \u00042\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0003\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/stripe/android/PaymentRelayStarter;",
        "Lcom/stripe/android/view/AuthActivityStarter;",
        "Lcom/stripe/android/PaymentRelayStarter$Args;",
        "Args",
        "Companion",
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
.field public static final Companion:Lcom/stripe/android/PaymentRelayStarter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/stripe/android/PaymentRelayStarter$Companion;->$$INSTANCE:Lcom/stripe/android/PaymentRelayStarter$Companion;

    sput-object v0, Lcom/stripe/android/PaymentRelayStarter;->Companion:Lcom/stripe/android/PaymentRelayStarter$Companion;

    return-void
.end method
