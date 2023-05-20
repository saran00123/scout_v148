.class public final Lcom/stripe/android/model/parsers/PaymentMethodJsonParser;
.super Ljava/lang/Object;
.source "PaymentMethodJsonParser.kt"

# interfaces
.implements Lcom/stripe/android/model/parsers/ModelJsonParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$BillingDetails;,
        Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$CardJsonParser;,
        Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$IdealJsonParser;,
        Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$FpxJsonParser;,
        Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$NetbankingJsonParser;,
        Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$SepaDebitJsonParser;,
        Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$AuBecsDebitJsonParser;,
        Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$BacsDebitJsonParser;,
        Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$SofortJsonParser;,
        Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$UpiJsonParser;,
        Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/android/model/parsers/ModelJsonParser<",
        "Lcom/stripe/android/model/PaymentMethod;",
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0000\u0018\u0000 \u000b2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u000b\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/android/model/parsers/PaymentMethodJsonParser;",
        "Lcom/stripe/android/model/parsers/ModelJsonParser;",
        "Lcom/stripe/android/model/PaymentMethod;",
        "()V",
        "parse",
        "json",
        "Lorg/json/JSONObject;",
        "AuBecsDebitJsonParser",
        "BacsDebitJsonParser",
        "BillingDetails",
        "CardJsonParser",
        "Companion",
        "FpxJsonParser",
        "IdealJsonParser",
        "NetbankingJsonParser",
        "SepaDebitJsonParser",
        "SofortJsonParser",
        "UpiJsonParser",
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
.field private static final Companion:Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FIELD_BILLING_DETAILS:Ljava/lang/String; = "billing_details"

.field private static final FIELD_CREATED:Ljava/lang/String; = "created"

.field private static final FIELD_CUSTOMER:Ljava/lang/String; = "customer"

.field private static final FIELD_ID:Ljava/lang/String; = "id"

.field private static final FIELD_LIVEMODE:Ljava/lang/String; = "livemode"

.field private static final FIELD_TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser;->Companion:Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/PaymentMethod;
    .registers 7
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/stripe/android/model/PaymentMethod$Type;->Companion:Lcom/stripe/android/model/PaymentMethod$Type$Companion;

    const-string v1, "type"

    invoke-static {p1, v1}, Lcom/stripe/android/model/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/android/model/PaymentMethod$Type$Companion;->fromCode$stripe_release(Ljava/lang/String;)Lcom/stripe/android/model/PaymentMethod$Type;

    move-result-object v0

    .line 12
    new-instance v1, Lcom/stripe/android/model/PaymentMethod$Builder;

    invoke-direct {v1}, Lcom/stripe/android/model/PaymentMethod$Builder;-><init>()V

    const-string v2, "id"

    .line 13
    invoke-static {p1, v2}, Lcom/stripe/android/model/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/stripe/android/model/PaymentMethod$Builder;->setId(Ljava/lang/String;)Lcom/stripe/android/model/PaymentMethod$Builder;

    move-result-object v1

    .line 14
    invoke-virtual {v1, v0}, Lcom/stripe/android/model/PaymentMethod$Builder;->setType(Lcom/stripe/android/model/PaymentMethod$Type;)Lcom/stripe/android/model/PaymentMethod$Builder;

    move-result-object v1

    .line 15
    sget-object v2, Lcom/stripe/android/model/StripeJsonUtils;->INSTANCE:Lcom/stripe/android/model/StripeJsonUtils;

    const-string v3, "created"

    invoke-virtual {v2, p1, v3}, Lcom/stripe/android/model/StripeJsonUtils;->optLong$stripe_release(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/stripe/android/model/PaymentMethod$Builder;->setCreated(Ljava/lang/Long;)Lcom/stripe/android/model/PaymentMethod$Builder;

    move-result-object v1

    const-string v2, "billing_details"

    .line 17
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_43

    .line 18
    new-instance v4, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$BillingDetails;

    invoke-direct {v4}, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$BillingDetails;-><init>()V

    invoke-virtual {v4, v2}, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$BillingDetails;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/PaymentMethod$BillingDetails;

    move-result-object v2

    goto :goto_44

    :cond_43
    move-object v2, v3

    .line 16
    :goto_44
    invoke-virtual {v1, v2}, Lcom/stripe/android/model/PaymentMethod$Builder;->setBillingDetails(Lcom/stripe/android/model/PaymentMethod$BillingDetails;)Lcom/stripe/android/model/PaymentMethod$Builder;

    move-result-object v1

    const-string v2, "customer"

    .line 21
    invoke-static {p1, v2}, Lcom/stripe/android/model/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/stripe/android/model/PaymentMethod$Builder;->setCustomerId(Ljava/lang/String;)Lcom/stripe/android/model/PaymentMethod$Builder;

    move-result-object v1

    const-string v2, "livemode"

    .line 22
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/stripe/android/model/PaymentMethod$Builder;->setLiveMode(Z)Lcom/stripe/android/model/PaymentMethod$Builder;

    move-result-object v1

    if-nez v0, :cond_60

    goto/16 :goto_137

    .line 24
    :cond_60
    sget-object v2, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/android/model/PaymentMethod$Type;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_13c

    goto/16 :goto_137

    .line 77
    :pswitch_6d
    iget-object v0, v0, Lcom/stripe/android/model/PaymentMethod$Type;->code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_7e

    .line 78
    new-instance v0, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$NetbankingJsonParser;

    invoke-direct {v0}, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$NetbankingJsonParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$NetbankingJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/PaymentMethod$Netbanking;

    move-result-object v3

    .line 76
    :cond_7e
    invoke-virtual {v1, v3}, Lcom/stripe/android/model/PaymentMethod$Builder;->setNetbanking(Lcom/stripe/android/model/PaymentMethod$Netbanking;)Lcom/stripe/android/model/PaymentMethod$Builder;

    goto/16 :goto_137

    .line 71
    :pswitch_83
    iget-object v0, v0, Lcom/stripe/android/model/PaymentMethod$Type;->code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_94

    .line 72
    new-instance v0, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$UpiJsonParser;

    invoke-direct {v0}, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$UpiJsonParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$UpiJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/PaymentMethod$Upi;

    move-result-object v3

    .line 70
    :cond_94
    invoke-virtual {v1, v3}, Lcom/stripe/android/model/PaymentMethod$Builder;->setUpi(Lcom/stripe/android/model/PaymentMethod$Upi;)Lcom/stripe/android/model/PaymentMethod$Builder;

    goto/16 :goto_137

    .line 65
    :pswitch_99
    iget-object v0, v0, Lcom/stripe/android/model/PaymentMethod$Type;->code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_aa

    .line 66
    new-instance v0, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$SofortJsonParser;

    invoke-direct {v0}, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$SofortJsonParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$SofortJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/PaymentMethod$Sofort;

    move-result-object v3

    .line 64
    :cond_aa
    invoke-virtual {v1, v3}, Lcom/stripe/android/model/PaymentMethod$Builder;->setSofort(Lcom/stripe/android/model/PaymentMethod$Sofort;)Lcom/stripe/android/model/PaymentMethod$Builder;

    goto/16 :goto_137

    .line 59
    :pswitch_af
    iget-object v0, v0, Lcom/stripe/android/model/PaymentMethod$Type;->code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_c0

    .line 60
    new-instance v0, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$BacsDebitJsonParser;

    invoke-direct {v0}, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$BacsDebitJsonParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$BacsDebitJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/PaymentMethod$BacsDebit;

    move-result-object v3

    .line 58
    :cond_c0
    invoke-virtual {v1, v3}, Lcom/stripe/android/model/PaymentMethod$Builder;->setBacsDebit(Lcom/stripe/android/model/PaymentMethod$BacsDebit;)Lcom/stripe/android/model/PaymentMethod$Builder;

    goto/16 :goto_137

    .line 53
    :pswitch_c5
    iget-object v0, v0, Lcom/stripe/android/model/PaymentMethod$Type;->code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_d6

    .line 54
    new-instance v0, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$AuBecsDebitJsonParser;

    invoke-direct {v0}, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$AuBecsDebitJsonParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$AuBecsDebitJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/PaymentMethod$AuBecsDebit;

    move-result-object v3

    .line 52
    :cond_d6
    invoke-virtual {v1, v3}, Lcom/stripe/android/model/PaymentMethod$Builder;->setAuBecsDebit(Lcom/stripe/android/model/PaymentMethod$AuBecsDebit;)Lcom/stripe/android/model/PaymentMethod$Builder;

    goto :goto_137

    .line 47
    :pswitch_da
    iget-object v0, v0, Lcom/stripe/android/model/PaymentMethod$Type;->code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_eb

    .line 48
    new-instance v0, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$SepaDebitJsonParser;

    invoke-direct {v0}, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$SepaDebitJsonParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$SepaDebitJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/PaymentMethod$SepaDebit;

    move-result-object v3

    .line 46
    :cond_eb
    invoke-virtual {v1, v3}, Lcom/stripe/android/model/PaymentMethod$Builder;->setSepaDebit(Lcom/stripe/android/model/PaymentMethod$SepaDebit;)Lcom/stripe/android/model/PaymentMethod$Builder;

    goto :goto_137

    .line 41
    :pswitch_ef
    iget-object v0, v0, Lcom/stripe/android/model/PaymentMethod$Type;->code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_100

    .line 42
    new-instance v0, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$FpxJsonParser;

    invoke-direct {v0}, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$FpxJsonParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$FpxJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/PaymentMethod$Fpx;

    move-result-object v3

    .line 40
    :cond_100
    invoke-virtual {v1, v3}, Lcom/stripe/android/model/PaymentMethod$Builder;->setFpx(Lcom/stripe/android/model/PaymentMethod$Fpx;)Lcom/stripe/android/model/PaymentMethod$Builder;

    goto :goto_137

    .line 35
    :pswitch_104
    iget-object v0, v0, Lcom/stripe/android/model/PaymentMethod$Type;->code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_115

    .line 36
    new-instance v0, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$IdealJsonParser;

    invoke-direct {v0}, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$IdealJsonParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$IdealJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/PaymentMethod$Ideal;

    move-result-object v3

    .line 34
    :cond_115
    invoke-virtual {v1, v3}, Lcom/stripe/android/model/PaymentMethod$Builder;->setIdeal(Lcom/stripe/android/model/PaymentMethod$Ideal;)Lcom/stripe/android/model/PaymentMethod$Builder;

    goto :goto_137

    .line 32
    :pswitch_119
    sget-object p1, Lcom/stripe/android/model/PaymentMethod$CardPresent;->Companion:Lcom/stripe/android/model/PaymentMethod$CardPresent$Companion;

    invoke-virtual {p1}, Lcom/stripe/android/model/PaymentMethod$CardPresent$Companion;->getEMPTY$stripe_release()Lcom/stripe/android/model/PaymentMethod$CardPresent;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/stripe/android/model/PaymentMethod$Builder;->setCardPresent(Lcom/stripe/android/model/PaymentMethod$CardPresent;)Lcom/stripe/android/model/PaymentMethod$Builder;

    goto :goto_137

    .line 27
    :pswitch_123
    iget-object v0, v0, Lcom/stripe/android/model/PaymentMethod$Type;->code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_134

    .line 28
    new-instance v0, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$CardJsonParser;

    invoke-direct {v0}, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$CardJsonParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser$CardJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/PaymentMethod$Card;

    move-result-object v3

    .line 26
    :cond_134
    invoke-virtual {v1, v3}, Lcom/stripe/android/model/PaymentMethod$Builder;->setCard(Lcom/stripe/android/model/PaymentMethod$Card;)Lcom/stripe/android/model/PaymentMethod$Builder;

    .line 86
    :goto_137
    invoke-virtual {v1}, Lcom/stripe/android/model/PaymentMethod$Builder;->build()Lcom/stripe/android/model/PaymentMethod;

    move-result-object p1

    return-object p1

    :pswitch_data_13c
    .packed-switch 0x1
        :pswitch_123
        :pswitch_119
        :pswitch_104
        :pswitch_ef
        :pswitch_da
        :pswitch_c5
        :pswitch_af
        :pswitch_99
        :pswitch_83
        :pswitch_6d
    .end packed-switch
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/StripeModel;
    .registers 2

    .line 8
    invoke-virtual {p0, p1}, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/PaymentMethod;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/model/StripeModel;

    return-object p1
.end method
