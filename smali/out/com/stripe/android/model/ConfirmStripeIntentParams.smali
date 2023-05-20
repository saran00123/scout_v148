.class public interface abstract Lcom/stripe/android/model/ConfirmStripeIntentParams;
.super Ljava/lang/Object;
.source "ConfirmStripeIntentParams.kt"

# interfaces
.implements Lcom/stripe/android/model/StripeParamsModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/model/ConfirmStripeIntentParams$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008f\u0018\u0000 \t2\u00020\u0001:\u0001\tJ\u0008\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/android/model/ConfirmStripeIntentParams;",
        "Lcom/stripe/android/model/StripeParamsModel;",
        "clientSecret",
        "",
        "getClientSecret",
        "()Ljava/lang/String;",
        "shouldUseStripeSdk",
        "",
        "withShouldUseStripeSdk",
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
.field public static final Companion:Lcom/stripe/android/model/ConfirmStripeIntentParams$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

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

    sget-object v0, Lcom/stripe/android/model/ConfirmStripeIntentParams$Companion;->$$INSTANCE:Lcom/stripe/android/model/ConfirmStripeIntentParams$Companion;

    sput-object v0, Lcom/stripe/android/model/ConfirmStripeIntentParams;->Companion:Lcom/stripe/android/model/ConfirmStripeIntentParams$Companion;

    return-void
.end method


# virtual methods
.method public abstract getClientSecret()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract shouldUseStripeSdk()Z
.end method

.method public abstract withShouldUseStripeSdk(Z)Lcom/stripe/android/model/ConfirmStripeIntentParams;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
