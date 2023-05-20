.class public final Lcom/stripe/android/OperationIdFactory$Companion;
.super Ljava/lang/Object;
.source "OperationIdFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/OperationIdFactory;
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\r\u0010\u0003\u001a\u00020\u0004H\u0000\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/stripe/android/OperationIdFactory$Companion;",
        "",
        "()V",
        "get",
        "Lcom/stripe/android/OperationIdFactory;",
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


# static fields
.field static final synthetic $$INSTANCE:Lcom/stripe/android/OperationIdFactory$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 6
    new-instance v0, Lcom/stripe/android/OperationIdFactory$Companion;

    invoke-direct {v0}, Lcom/stripe/android/OperationIdFactory$Companion;-><init>()V

    sput-object v0, Lcom/stripe/android/OperationIdFactory$Companion;->$$INSTANCE:Lcom/stripe/android/OperationIdFactory$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get$stripe_release()Lcom/stripe/android/OperationIdFactory;
    .registers 2

    .line 8
    new-instance v0, Lcom/stripe/android/StripeOperationIdFactory;

    invoke-direct {v0}, Lcom/stripe/android/StripeOperationIdFactory;-><init>()V

    check-cast v0, Lcom/stripe/android/OperationIdFactory;

    return-object v0
.end method
