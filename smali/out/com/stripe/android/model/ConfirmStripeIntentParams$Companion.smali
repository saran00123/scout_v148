.class public final Lcom/stripe/android/model/ConfirmStripeIntentParams$Companion;
.super Ljava/lang/Object;
.source "ConfirmStripeIntentParams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/model/ConfirmStripeIntentParams;
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/android/model/ConfirmStripeIntentParams$Companion;",
        "",
        "()V",
        "PARAM_CLIENT_SECRET",
        "",
        "PARAM_MANDATE_DATA",
        "PARAM_MANDATE_ID",
        "PARAM_PAYMENT_METHOD_DATA",
        "PARAM_PAYMENT_METHOD_ID",
        "PARAM_RETURN_URL",
        "PARAM_USE_STRIPE_SDK",
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
.field static final synthetic $$INSTANCE:Lcom/stripe/android/model/ConfirmStripeIntentParams$Companion;

.field public static final PARAM_CLIENT_SECRET:Ljava/lang/String; = "client_secret"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PARAM_MANDATE_DATA:Ljava/lang/String; = "mandate_data"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PARAM_MANDATE_ID:Ljava/lang/String; = "mandate"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PARAM_PAYMENT_METHOD_DATA:Ljava/lang/String; = "payment_method_data"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PARAM_PAYMENT_METHOD_ID:Ljava/lang/String; = "payment_method"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PARAM_RETURN_URL:Ljava/lang/String; = "return_url"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PARAM_USE_STRIPE_SDK:Ljava/lang/String; = "use_stripe_sdk"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Lcom/stripe/android/model/ConfirmStripeIntentParams$Companion;

    invoke-direct {v0}, Lcom/stripe/android/model/ConfirmStripeIntentParams$Companion;-><init>()V

    sput-object v0, Lcom/stripe/android/model/ConfirmStripeIntentParams$Companion;->$$INSTANCE:Lcom/stripe/android/model/ConfirmStripeIntentParams$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
