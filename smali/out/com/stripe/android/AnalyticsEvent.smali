.class public final enum Lcom/stripe/android/AnalyticsEvent;
.super Ljava/lang/Enum;
.source "AnalyticsEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/AnalyticsEvent$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/android/AnalyticsEvent;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u00081\u0008\u0080\u0001\u0018\u0000 32\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u00013B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"j\u0002\u0008#j\u0002\u0008$j\u0002\u0008%j\u0002\u0008&j\u0002\u0008\'j\u0002\u0008(j\u0002\u0008)j\u0002\u0008*j\u0002\u0008+j\u0002\u0008,j\u0002\u0008-j\u0002\u0008.j\u0002\u0008/j\u0002\u00080j\u0002\u00081j\u0002\u00082\u00a8\u00064"
    }
    d2 = {
        "Lcom/stripe/android/AnalyticsEvent;",
        "",
        "code",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getCode$stripe_release",
        "()Ljava/lang/String;",
        "toString",
        "TokenCreate",
        "PaymentMethodCreate",
        "CustomerRetrieve",
        "CustomerRetrievePaymentMethods",
        "CustomerAttachPaymentMethod",
        "CustomerDetachPaymentMethod",
        "CustomerDeleteSource",
        "CustomerSetShippingInfo",
        "CustomerAddSource",
        "CustomerSetDefaultSource",
        "IssuingRetrievePin",
        "IssuingUpdatePin",
        "SourceCreate",
        "SourceRetrieve",
        "PaymentIntentConfirm",
        "PaymentIntentRetrieve",
        "PaymentIntentCancelSource",
        "SetupIntentConfirm",
        "SetupIntentRetrieve",
        "SetupIntentCancelSource",
        "FileCreate",
        "Auth3ds1Sdk",
        "FpxBankStatusesRetrieve",
        "StripeUrlRetrieve",
        "Auth3ds2Fingerprint",
        "Auth3ds2Start",
        "Auth3ds2Frictionless",
        "Auth3ds2ChallengePresented",
        "Auth3ds2ChallengeCanceled",
        "Auth3ds2ChallengeCompleted",
        "Auth3ds2ChallengeErrored",
        "Auth3ds2ChallengeTimedOut",
        "Auth3ds2Fallback",
        "AuthRedirect",
        "AuthError",
        "AuthSourceStart",
        "AuthSourceRedirect",
        "AuthSourceResult",
        "CardMetadataPublishableKeyAvailable",
        "CardMetadataPublishableKeyUnavailable",
        "CardMetadataLoadedTooSlow",
        "CardMetadataLoadFailure",
        "CardMetadataMissingRange",
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
.field private static final synthetic $VALUES:[Lcom/stripe/android/AnalyticsEvent;

.field public static final enum Auth3ds1Sdk:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum Auth3ds2ChallengeCanceled:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum Auth3ds2ChallengeCompleted:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum Auth3ds2ChallengeErrored:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum Auth3ds2ChallengePresented:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum Auth3ds2ChallengeTimedOut:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum Auth3ds2Fallback:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum Auth3ds2Fingerprint:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum Auth3ds2Frictionless:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum Auth3ds2Start:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum AuthError:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum AuthRedirect:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum AuthSourceRedirect:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum AuthSourceResult:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum AuthSourceStart:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum CardMetadataLoadFailure:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum CardMetadataLoadedTooSlow:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum CardMetadataMissingRange:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum CardMetadataPublishableKeyAvailable:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum CardMetadataPublishableKeyUnavailable:Lcom/stripe/android/AnalyticsEvent;

.field private static final Companion:Lcom/stripe/android/AnalyticsEvent$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum CustomerAddSource:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum CustomerAttachPaymentMethod:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum CustomerDeleteSource:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum CustomerDetachPaymentMethod:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum CustomerRetrieve:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum CustomerRetrievePaymentMethods:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum CustomerSetDefaultSource:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum CustomerSetShippingInfo:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum FileCreate:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum FpxBankStatusesRetrieve:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum IssuingRetrievePin:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum IssuingUpdatePin:Lcom/stripe/android/AnalyticsEvent;

.field private static final PREFIX:Ljava/lang/String; = "stripe_android"

.field public static final enum PaymentIntentCancelSource:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum PaymentIntentConfirm:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum PaymentIntentRetrieve:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum PaymentMethodCreate:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum SetupIntentCancelSource:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum SetupIntentConfirm:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum SetupIntentRetrieve:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum SourceCreate:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum SourceRetrieve:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum StripeUrlRetrieve:Lcom/stripe/android/AnalyticsEvent;

.field public static final enum TokenCreate:Lcom/stripe/android/AnalyticsEvent;


# instance fields
.field private final code:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x2b

    new-array v0, v0, [Lcom/stripe/android/AnalyticsEvent;

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const/4 v2, 0x0

    const-string v3, "TokenCreate"

    const-string v4, "token_creation"

    .line 5
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->TokenCreate:Lcom/stripe/android/AnalyticsEvent;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const/4 v2, 0x1

    const-string v3, "PaymentMethodCreate"

    const-string v4, "payment_method_creation"

    .line 8
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->PaymentMethodCreate:Lcom/stripe/android/AnalyticsEvent;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const/4 v2, 0x2

    const-string v3, "CustomerRetrieve"

    const-string v4, "retrieve_customer"

    .line 11
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->CustomerRetrieve:Lcom/stripe/android/AnalyticsEvent;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const/4 v2, 0x3

    const-string v3, "CustomerRetrievePaymentMethods"

    const-string v4, "retrieve_payment_methods"

    .line 12
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->CustomerRetrievePaymentMethods:Lcom/stripe/android/AnalyticsEvent;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const/4 v2, 0x4

    const-string v3, "CustomerAttachPaymentMethod"

    const-string v4, "attach_payment_method"

    .line 13
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->CustomerAttachPaymentMethod:Lcom/stripe/android/AnalyticsEvent;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const/4 v2, 0x5

    const-string v3, "CustomerDetachPaymentMethod"

    const-string v4, "detach_payment_method"

    .line 14
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->CustomerDetachPaymentMethod:Lcom/stripe/android/AnalyticsEvent;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const/4 v2, 0x6

    const-string v3, "CustomerDeleteSource"

    const-string v4, "delete_source"

    .line 15
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->CustomerDeleteSource:Lcom/stripe/android/AnalyticsEvent;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const/4 v2, 0x7

    const-string v3, "CustomerSetShippingInfo"

    const-string v4, "set_shipping_info"

    .line 16
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->CustomerSetShippingInfo:Lcom/stripe/android/AnalyticsEvent;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0x8

    const-string v3, "CustomerAddSource"

    const-string v4, "add_source"

    .line 17
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->CustomerAddSource:Lcom/stripe/android/AnalyticsEvent;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0x9

    const-string v3, "CustomerSetDefaultSource"

    const-string v4, "default_source"

    .line 18
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->CustomerSetDefaultSource:Lcom/stripe/android/AnalyticsEvent;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0xa

    const-string v3, "IssuingRetrievePin"

    const-string v4, "issuing_retrieve_pin"

    .line 21
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->IssuingRetrievePin:Lcom/stripe/android/AnalyticsEvent;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0xb

    const-string v3, "IssuingUpdatePin"

    const-string v4, "issuing_update_pin"

    .line 22
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->IssuingUpdatePin:Lcom/stripe/android/AnalyticsEvent;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0xc

    const-string v3, "SourceCreate"

    const-string v4, "source_creation"

    .line 25
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->SourceCreate:Lcom/stripe/android/AnalyticsEvent;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0xd

    const-string v3, "SourceRetrieve"

    const-string v4, "retrieve_source"

    .line 26
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->SourceRetrieve:Lcom/stripe/android/AnalyticsEvent;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0xe

    const-string v3, "PaymentIntentConfirm"

    const-string v4, "payment_intent_confirmation"

    .line 29
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->PaymentIntentConfirm:Lcom/stripe/android/AnalyticsEvent;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const-string v2, "PaymentIntentRetrieve"

    const/16 v3, 0xf

    const-string v4, "payment_intent_retrieval"

    .line 30
    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->PaymentIntentRetrieve:Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const-string v2, "PaymentIntentCancelSource"

    const/16 v3, 0x10

    const-string v4, "payment_intent_cancel_source"

    .line 31
    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->PaymentIntentCancelSource:Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const-string v2, "SetupIntentConfirm"

    const/16 v3, 0x11

    const-string v4, "setup_intent_confirmation"

    .line 34
    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->SetupIntentConfirm:Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const-string v2, "SetupIntentRetrieve"

    const/16 v3, 0x12

    const-string v4, "setup_intent_retrieval"

    .line 35
    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->SetupIntentRetrieve:Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const-string v2, "SetupIntentCancelSource"

    const/16 v3, 0x13

    const-string v4, "setup_intent_cancel_source"

    .line 36
    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->SetupIntentCancelSource:Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const-string v2, "FileCreate"

    const/16 v3, 0x14

    const-string v4, "create_file"

    .line 39
    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->FileCreate:Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const-string v2, "Auth3ds1Sdk"

    const/16 v3, 0x15

    const-string v4, "3ds1_sdk"

    .line 42
    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->Auth3ds1Sdk:Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const-string v2, "FpxBankStatusesRetrieve"

    const/16 v3, 0x16

    const-string v4, "retrieve_fpx_bank_statuses"

    .line 45
    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->FpxBankStatusesRetrieve:Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const-string v2, "StripeUrlRetrieve"

    const/16 v3, 0x17

    const-string v4, "retrieve_stripe_url"

    .line 48
    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->StripeUrlRetrieve:Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const-string v2, "Auth3ds2Fingerprint"

    const/16 v3, 0x18

    const-string v4, "3ds2_fingerprint"

    .line 51
    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->Auth3ds2Fingerprint:Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const-string v2, "Auth3ds2Start"

    const/16 v3, 0x19

    const-string v4, "3ds2_authenticate"

    .line 52
    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->Auth3ds2Start:Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const-string v2, "Auth3ds2Frictionless"

    const/16 v3, 0x1a

    const-string v4, "3ds2_frictionless_flow"

    .line 53
    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->Auth3ds2Frictionless:Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const-string v2, "Auth3ds2ChallengePresented"

    const/16 v3, 0x1b

    const-string v4, "3ds2_challenge_flow_presented"

    .line 54
    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->Auth3ds2ChallengePresented:Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const-string v2, "Auth3ds2ChallengeCanceled"

    const/16 v3, 0x1c

    const-string v4, "3ds2_challenge_flow_canceled"

    .line 55
    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->Auth3ds2ChallengeCanceled:Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const-string v2, "Auth3ds2ChallengeCompleted"

    const/16 v3, 0x1d

    const-string v4, "3ds2_challenge_flow_completed"

    .line 56
    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->Auth3ds2ChallengeCompleted:Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const-string v2, "Auth3ds2ChallengeErrored"

    const/16 v3, 0x1e

    const-string v4, "3ds2_challenge_flow_errored"

    .line 57
    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->Auth3ds2ChallengeErrored:Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const-string v2, "Auth3ds2ChallengeTimedOut"

    const/16 v3, 0x1f

    const-string v4, "3ds2_challenge_flow_timed_out"

    .line 58
    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->Auth3ds2ChallengeTimedOut:Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const-string v2, "Auth3ds2Fallback"

    const/16 v3, 0x20

    const-string v4, "3ds2_fallback"

    .line 59
    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->Auth3ds2Fallback:Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const-string v2, "AuthRedirect"

    const/16 v3, 0x21

    const-string v4, "url_redirect_next_action"

    .line 61
    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->AuthRedirect:Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const-string v2, "AuthError"

    const/16 v3, 0x22

    const-string v4, "auth_error"

    .line 62
    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->AuthError:Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const-string v2, "AuthSourceStart"

    const/16 v3, 0x23

    const-string v4, "auth_source_start"

    .line 65
    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->AuthSourceStart:Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const-string v2, "AuthSourceRedirect"

    const/16 v3, 0x24

    const-string v4, "auth_source_redirect"

    .line 66
    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->AuthSourceRedirect:Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const-string v2, "AuthSourceResult"

    const/16 v3, 0x25

    const-string v4, "auth_source_result"

    .line 67
    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->AuthSourceResult:Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const-string v2, "CardMetadataPublishableKeyAvailable"

    const/16 v3, 0x26

    const-string v4, "card_metadata_pk_available"

    .line 69
    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->CardMetadataPublishableKeyAvailable:Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const-string v2, "CardMetadataPublishableKeyUnavailable"

    const/16 v3, 0x27

    const-string v4, "card_metadata_pk_unavailable"

    .line 70
    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->CardMetadataPublishableKeyUnavailable:Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const-string v2, "CardMetadataLoadedTooSlow"

    const/16 v3, 0x28

    const-string v4, "card_metadata_loaded_too_slow"

    .line 72
    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->CardMetadataLoadedTooSlow:Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const-string v2, "CardMetadataLoadFailure"

    const/16 v3, 0x29

    const-string v4, "card_metadata_load_failure"

    .line 73
    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->CardMetadataLoadFailure:Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/AnalyticsEvent;

    const-string v2, "CardMetadataMissingRange"

    const/16 v3, 0x2a

    const-string v4, "card_metadata_missing_range"

    .line 74
    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/android/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/AnalyticsEvent;->CardMetadataMissingRange:Lcom/stripe/android/AnalyticsEvent;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sput-object v0, Lcom/stripe/android/AnalyticsEvent;->$VALUES:[Lcom/stripe/android/AnalyticsEvent;

    new-instance v0, Lcom/stripe/android/AnalyticsEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/AnalyticsEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/AnalyticsEvent;->Companion:Lcom/stripe/android/AnalyticsEvent$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/stripe/android/AnalyticsEvent;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/android/AnalyticsEvent;
    .registers 2

    const-class v0, Lcom/stripe/android/AnalyticsEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/android/AnalyticsEvent;

    return-object p0
.end method

.method public static values()[Lcom/stripe/android/AnalyticsEvent;
    .registers 1

    sget-object v0, Lcom/stripe/android/AnalyticsEvent;->$VALUES:[Lcom/stripe/android/AnalyticsEvent;

    invoke-virtual {v0}, [Lcom/stripe/android/AnalyticsEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/android/AnalyticsEvent;

    return-object v0
.end method


# virtual methods
.method public final getCode$stripe_release()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/stripe/android/AnalyticsEvent;->code:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stripe_android."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/AnalyticsEvent;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
