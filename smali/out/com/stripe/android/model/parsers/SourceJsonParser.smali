.class public final Lcom/stripe/android/model/parsers/SourceJsonParser;
.super Ljava/lang/Object;
.source "SourceJsonParser.kt"

# interfaces
.implements Lcom/stripe/android/model/parsers/ModelJsonParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/model/parsers/SourceJsonParser$RedirectJsonParser;,
        Lcom/stripe/android/model/parsers/SourceJsonParser$CodeVerificationJsonParser;,
        Lcom/stripe/android/model/parsers/SourceJsonParser$ReceiverJsonParser;,
        Lcom/stripe/android/model/parsers/SourceJsonParser$OwnerJsonParser;,
        Lcom/stripe/android/model/parsers/SourceJsonParser$KlarnaJsonParser;,
        Lcom/stripe/android/model/parsers/SourceJsonParser$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/android/model/parsers/ModelJsonParser<",
        "Lcom/stripe/android/model/Source;",
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u0000 \u00082\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0006\u0007\u0008\t\n\u000b\u000cB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/android/model/parsers/SourceJsonParser;",
        "Lcom/stripe/android/model/parsers/ModelJsonParser;",
        "Lcom/stripe/android/model/Source;",
        "()V",
        "parse",
        "json",
        "Lorg/json/JSONObject;",
        "CodeVerificationJsonParser",
        "Companion",
        "KlarnaJsonParser",
        "OwnerJsonParser",
        "ReceiverJsonParser",
        "RedirectJsonParser",
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
.field private static final Companion:Lcom/stripe/android/model/parsers/SourceJsonParser$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FIELD_AMOUNT:Ljava/lang/String; = "amount"

.field private static final FIELD_CLIENT_SECRET:Ljava/lang/String; = "client_secret"

.field private static final FIELD_CODE_VERIFICATION:Ljava/lang/String; = "code_verification"

.field private static final FIELD_CREATED:Ljava/lang/String; = "created"

.field private static final FIELD_CURRENCY:Ljava/lang/String; = "currency"

.field private static final FIELD_FLOW:Ljava/lang/String; = "flow"

.field private static final FIELD_ID:Ljava/lang/String; = "id"

.field private static final FIELD_KLARNA:Ljava/lang/String; = "klarna"

.field private static final FIELD_LIVEMODE:Ljava/lang/String; = "livemode"

.field private static final FIELD_OBJECT:Ljava/lang/String; = "object"

.field private static final FIELD_OWNER:Ljava/lang/String; = "owner"

.field private static final FIELD_RECEIVER:Ljava/lang/String; = "receiver"

.field private static final FIELD_REDIRECT:Ljava/lang/String; = "redirect"

.field private static final FIELD_SOURCE_ORDER:Ljava/lang/String; = "source_order"

.field private static final FIELD_STATEMENT_DESCRIPTOR:Ljava/lang/String; = "statement_descriptor"

.field private static final FIELD_STATUS:Ljava/lang/String; = "status"

.field private static final FIELD_TYPE:Ljava/lang/String; = "type"

.field private static final FIELD_USAGE:Ljava/lang/String; = "usage"

.field private static final FIELD_WECHAT:Ljava/lang/String; = "wechat"

.field private static final MODELED_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALUE_CARD:Ljava/lang/String; = "card"

.field private static final VALUE_SOURCE:Ljava/lang/String; = "source"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/model/parsers/SourceJsonParser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/model/parsers/SourceJsonParser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/model/parsers/SourceJsonParser;->Companion:Lcom/stripe/android/model/parsers/SourceJsonParser$Companion;

    const-string v0, "card"

    const-string v1, "sepa_debit"

    .line 155
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/stripe/android/model/parsers/SourceJsonParser;->MODELED_TYPES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMODELED_TYPES$cp()Ljava/util/Set;
    .registers 1

    .line 11
    sget-object v0, Lcom/stripe/android/model/parsers/SourceJsonParser;->MODELED_TYPES:Ljava/util/Set;

    return-object v0
.end method

.method public static final asSourceType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/stripe/android/model/parsers/SourceJsonParser;->Companion:Lcom/stripe/android/model/parsers/SourceJsonParser$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/android/model/parsers/SourceJsonParser$Companion;->asSourceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/Source;
    .registers 5
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "object"

    .line 13
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_3b

    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x356f97e5    # -4731917.5f

    if-eq v1, v2, :cond_2c

    const v2, 0x2e7b10

    if-eq v1, v2, :cond_1d

    goto :goto_3b

    :cond_1d
    const-string v1, "card"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    sget-object v0, Lcom/stripe/android/model/parsers/SourceJsonParser;->Companion:Lcom/stripe/android/model/parsers/SourceJsonParser$Companion;

    invoke-static {v0, p1}, Lcom/stripe/android/model/parsers/SourceJsonParser$Companion;->access$fromCardJson(Lcom/stripe/android/model/parsers/SourceJsonParser$Companion;Lorg/json/JSONObject;)Lcom/stripe/android/model/Source;

    move-result-object p1

    goto :goto_3c

    :cond_2c
    const-string v1, "source"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    sget-object v0, Lcom/stripe/android/model/parsers/SourceJsonParser;->Companion:Lcom/stripe/android/model/parsers/SourceJsonParser$Companion;

    invoke-static {v0, p1}, Lcom/stripe/android/model/parsers/SourceJsonParser$Companion;->access$fromSourceJson(Lcom/stripe/android/model/parsers/SourceJsonParser$Companion;Lorg/json/JSONObject;)Lcom/stripe/android/model/Source;

    move-result-object p1

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 p1, 0x0

    :goto_3c
    return-object p1
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/StripeModel;
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Lcom/stripe/android/model/parsers/SourceJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/Source;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/model/StripeModel;

    return-object p1
.end method
