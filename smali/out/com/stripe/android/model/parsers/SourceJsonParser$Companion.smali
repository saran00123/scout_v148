.class final Lcom/stripe/android/model/parsers/SourceJsonParser$Companion;
.super Ljava/lang/Object;
.source "SourceJsonParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/model/parsers/SourceJsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSourceJsonParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SourceJsonParser.kt\ncom/stripe/android/model/parsers/SourceJsonParser$Companion\n*L\n1#1,316:1\n250#1,41:317\n250#1,41:358\n250#1,41:399\n250#1,41:440\n250#1,41:481\n*E\n*S KotlinDebug\n*F\n+ 1 SourceJsonParser.kt\ncom/stripe/android/model/parsers/SourceJsonParser$Companion\n*L\n199#1,41:317\n208#1,41:358\n216#1,41:399\n217#1,41:440\n218#1,41:481\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0013\n\u0002\u0010\"\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u001b\u001a\u00020\u00042\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0004H\u0007J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0010\u0010!\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0002J.\u0010\"\u001a\u0004\u0018\u0001H#\"\n\u0008\u0000\u0010#\u0018\u0001*\u00020$2\u0006\u0010\u001f\u001a\u00020 2\u0008\u0008\u0001\u0010%\u001a\u00020\u0004H\u0082\u0008\u00a2\u0006\u0002\u0010&R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/stripe/android/model/parsers/SourceJsonParser$Companion;",
        "",
        "()V",
        "FIELD_AMOUNT",
        "",
        "FIELD_CLIENT_SECRET",
        "FIELD_CODE_VERIFICATION",
        "FIELD_CREATED",
        "FIELD_CURRENCY",
        "FIELD_FLOW",
        "FIELD_ID",
        "FIELD_KLARNA",
        "FIELD_LIVEMODE",
        "FIELD_OBJECT",
        "FIELD_OWNER",
        "FIELD_RECEIVER",
        "FIELD_REDIRECT",
        "FIELD_SOURCE_ORDER",
        "FIELD_STATEMENT_DESCRIPTOR",
        "FIELD_STATUS",
        "FIELD_TYPE",
        "FIELD_USAGE",
        "FIELD_WECHAT",
        "MODELED_TYPES",
        "",
        "VALUE_CARD",
        "VALUE_SOURCE",
        "asSourceType",
        "sourceType",
        "fromCardJson",
        "Lcom/stripe/android/model/Source;",
        "jsonObject",
        "Lorg/json/JSONObject;",
        "fromSourceJson",
        "optStripeJsonModel",
        "T",
        "Lcom/stripe/android/model/StripeModel;",
        "key",
        "(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/stripe/android/model/StripeModel;",
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

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 149
    invoke-direct {p0}, Lcom/stripe/android/model/parsers/SourceJsonParser$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$fromCardJson(Lcom/stripe/android/model/parsers/SourceJsonParser$Companion;Lorg/json/JSONObject;)Lcom/stripe/android/model/Source;
    .registers 2

    .line 149
    invoke-direct {p0, p1}, Lcom/stripe/android/model/parsers/SourceJsonParser$Companion;->fromCardJson(Lorg/json/JSONObject;)Lcom/stripe/android/model/Source;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$fromSourceJson(Lcom/stripe/android/model/parsers/SourceJsonParser$Companion;Lorg/json/JSONObject;)Lcom/stripe/android/model/Source;
    .registers 2

    .line 149
    invoke-direct {p0, p1}, Lcom/stripe/android/model/parsers/SourceJsonParser$Companion;->fromSourceJson(Lorg/json/JSONObject;)Lcom/stripe/android/model/Source;

    move-result-object p0

    return-object p0
.end method

.method private final fromCardJson(Lorg/json/JSONObject;)Lcom/stripe/android/model/Source;
    .registers 29

    move-object/from16 v0, p1

    .line 179
    new-instance v26, Lcom/stripe/android/model/Source;

    move-object/from16 v1, v26

    const-string v2, "id"

    .line 180
    invoke-static {v0, v2}, Lcom/stripe/android/model/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    new-instance v3, Lcom/stripe/android/model/parsers/SourceCardDataJsonParser;

    invoke-direct {v3}, Lcom/stripe/android/model/parsers/SourceCardDataJsonParser;-><init>()V

    invoke-virtual {v3, v0}, Lcom/stripe/android/model/parsers/SourceCardDataJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/SourceTypeModel$Card;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/stripe/android/model/SourceTypeModel;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v17, "card"

    const-string v18, "card"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const v24, 0x3e3ffe

    const/16 v25, 0x0

    .line 179
    invoke-direct/range {v1 .. v25}, Lcom/stripe/android/model/Source;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/android/model/Source$CodeVerification;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/android/model/Source$Flow;Ljava/lang/Boolean;Ljava/util/Map;Lcom/stripe/android/model/Source$Owner;Lcom/stripe/android/model/Source$Receiver;Lcom/stripe/android/model/Source$Redirect;Lcom/stripe/android/model/Source$Status;Ljava/util/Map;Lcom/stripe/android/model/SourceTypeModel;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/Source$Usage;Lcom/stripe/android/model/WeChat;Lcom/stripe/android/model/Source$Klarna;Lcom/stripe/android/model/SourceOrder;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v26
.end method

.method private final fromSourceJson(Lorg/json/JSONObject;)Lcom/stripe/android/model/Source;
    .registers 33

    move-object/from16 v0, p1

    const-string v1, "type"

    .line 188
    invoke-static {v0, v1}, Lcom/stripe/android/model/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    goto :goto_d

    :cond_b
    const-string v1, "unknown"

    :goto_d
    move-object v15, v1

    .line 190
    move-object/from16 v1, p0

    check-cast v1, Lcom/stripe/android/model/parsers/SourceJsonParser$Companion;

    invoke-virtual {v1, v15}, Lcom/stripe/android/model/parsers/SourceJsonParser$Companion;->asSourceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 195
    sget-object v1, Lcom/stripe/android/model/StripeJsonUtils;->INSTANCE:Lcom/stripe/android/model/StripeJsonUtils;

    .line 196
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 195
    invoke-virtual {v1, v2}, Lcom/stripe/android/model/StripeJsonUtils;->jsonObjectToMap$stripe_release(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v16

    .line 198
    invoke-static {}, Lcom/stripe/android/model/parsers/SourceJsonParser;->access$getMODELED_TYPES$cp()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "owner"

    const-string v3, "redirect"

    const-string v4, "receiver"

    const-string v5, "code_verification"

    if-eqz v1, :cond_f5

    .line 317
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    const/4 v1, 0x0

    goto/16 :goto_f0

    .line 321
    :cond_3b
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2a0

    goto/16 :goto_e6

    :sswitch_44
    const-string v1, "sepa_debit"

    .line 347
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e6

    .line 348
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5c

    .line 349
    new-instance v7, Lcom/stripe/android/model/parsers/SourceSepaDebitDataJsonParser;

    invoke-direct {v7}, Lcom/stripe/android/model/parsers/SourceSepaDebitDataJsonParser;-><init>()V

    invoke-virtual {v7, v1}, Lcom/stripe/android/model/parsers/SourceSepaDebitDataJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/SourceTypeModel$SepaDebit;

    move-result-object v1

    goto :goto_5d

    :cond_5c
    const/4 v1, 0x0

    .line 348
    :goto_5d
    check-cast v1, Lcom/stripe/android/model/StripeModel;

    goto/16 :goto_e7

    .line 322
    :sswitch_61
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 323
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_77

    .line 324
    new-instance v7, Lcom/stripe/android/model/parsers/SourceJsonParser$CodeVerificationJsonParser;

    invoke-direct {v7}, Lcom/stripe/android/model/parsers/SourceJsonParser$CodeVerificationJsonParser;-><init>()V

    invoke-virtual {v7, v1}, Lcom/stripe/android/model/parsers/SourceJsonParser$CodeVerificationJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/Source$CodeVerification;

    move-result-object v1

    goto :goto_78

    :cond_77
    const/4 v1, 0x0

    .line 323
    :goto_78
    check-cast v1, Lcom/stripe/android/model/StripeModel;

    goto/16 :goto_e7

    .line 327
    :sswitch_7c
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 328
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_92

    .line 329
    new-instance v7, Lcom/stripe/android/model/parsers/SourceJsonParser$OwnerJsonParser;

    invoke-direct {v7}, Lcom/stripe/android/model/parsers/SourceJsonParser$OwnerJsonParser;-><init>()V

    invoke-virtual {v7, v1}, Lcom/stripe/android/model/parsers/SourceJsonParser$OwnerJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/Source$Owner;

    move-result-object v1

    goto :goto_93

    :cond_92
    const/4 v1, 0x0

    .line 328
    :goto_93
    check-cast v1, Lcom/stripe/android/model/StripeModel;

    goto :goto_e7

    :sswitch_96
    const-string v1, "card"

    .line 342
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e6

    .line 343
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_ae

    .line 344
    new-instance v7, Lcom/stripe/android/model/parsers/SourceCardDataJsonParser;

    invoke-direct {v7}, Lcom/stripe/android/model/parsers/SourceCardDataJsonParser;-><init>()V

    invoke-virtual {v7, v1}, Lcom/stripe/android/model/parsers/SourceCardDataJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/SourceTypeModel$Card;

    move-result-object v1

    goto :goto_af

    :cond_ae
    const/4 v1, 0x0

    .line 343
    :goto_af
    check-cast v1, Lcom/stripe/android/model/StripeModel;

    goto :goto_e7

    .line 337
    :sswitch_b2
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 338
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_c8

    .line 339
    new-instance v7, Lcom/stripe/android/model/parsers/SourceJsonParser$RedirectJsonParser;

    invoke-direct {v7}, Lcom/stripe/android/model/parsers/SourceJsonParser$RedirectJsonParser;-><init>()V

    invoke-virtual {v7, v1}, Lcom/stripe/android/model/parsers/SourceJsonParser$RedirectJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/Source$Redirect;

    move-result-object v1

    goto :goto_c9

    :cond_c8
    const/4 v1, 0x0

    .line 338
    :goto_c9
    check-cast v1, Lcom/stripe/android/model/StripeModel;

    goto :goto_e7

    .line 332
    :sswitch_cc
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 333
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_e2

    .line 334
    new-instance v7, Lcom/stripe/android/model/parsers/SourceJsonParser$ReceiverJsonParser;

    invoke-direct {v7}, Lcom/stripe/android/model/parsers/SourceJsonParser$ReceiverJsonParser;-><init>()V

    invoke-virtual {v7, v1}, Lcom/stripe/android/model/parsers/SourceJsonParser$ReceiverJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/Source$Receiver;

    move-result-object v1

    goto :goto_e3

    :cond_e2
    const/4 v1, 0x0

    .line 333
    :goto_e3
    check-cast v1, Lcom/stripe/android/model/StripeModel;

    goto :goto_e7

    :cond_e6
    :goto_e6
    const/4 v1, 0x0

    .line 357
    :goto_e7
    instance-of v7, v1, Lcom/stripe/android/model/SourceTypeModel;

    if-nez v7, :cond_ec

    const/4 v1, 0x0

    :cond_ec
    check-cast v1, Lcom/stripe/android/model/SourceTypeModel;

    check-cast v1, Lcom/stripe/android/model/StripeModel;

    :goto_f0
    check-cast v1, Lcom/stripe/android/model/SourceTypeModel;

    move-object/from16 v17, v1

    goto :goto_f7

    :cond_f5
    const/16 v17, 0x0

    :goto_f7
    const-string v1, "id"

    .line 205
    invoke-static {v0, v1}, Lcom/stripe/android/model/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    sget-object v7, Lcom/stripe/android/model/StripeJsonUtils;->INSTANCE:Lcom/stripe/android/model/StripeJsonUtils;

    const-string v8, "amount"

    invoke-virtual {v7, v0, v8}, Lcom/stripe/android/model/StripeJsonUtils;->optLong$stripe_release(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "client_secret"

    .line 207
    invoke-static {v0, v8}, Lcom/stripe/android/model/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 358
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_113

    const/4 v5, 0x0

    goto :goto_139

    .line 362
    :cond_113
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_2ba

    goto :goto_12f

    .line 364
    :sswitch_11b
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_12b

    .line 365
    new-instance v9, Lcom/stripe/android/model/parsers/SourceJsonParser$CodeVerificationJsonParser;

    invoke-direct {v9}, Lcom/stripe/android/model/parsers/SourceJsonParser$CodeVerificationJsonParser;-><init>()V

    invoke-virtual {v9, v5}, Lcom/stripe/android/model/parsers/SourceJsonParser$CodeVerificationJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/Source$CodeVerification;

    move-result-object v5

    goto :goto_12c

    :cond_12b
    const/4 v5, 0x0

    .line 364
    :goto_12c
    check-cast v5, Lcom/stripe/android/model/StripeModel;

    goto :goto_130

    :goto_12f
    :sswitch_12f
    const/4 v5, 0x0

    .line 398
    :goto_130
    instance-of v9, v5, Lcom/stripe/android/model/Source$CodeVerification;

    if-nez v9, :cond_135

    const/4 v5, 0x0

    :cond_135
    check-cast v5, Lcom/stripe/android/model/Source$CodeVerification;

    check-cast v5, Lcom/stripe/android/model/StripeModel;

    :goto_139
    check-cast v5, Lcom/stripe/android/model/Source$CodeVerification;

    .line 212
    sget-object v9, Lcom/stripe/android/model/StripeJsonUtils;->INSTANCE:Lcom/stripe/android/model/StripeJsonUtils;

    const-string v10, "created"

    invoke-virtual {v9, v0, v10}, Lcom/stripe/android/model/StripeJsonUtils;->optLong$stripe_release(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "currency"

    .line 213
    invoke-static {v0, v10}, Lcom/stripe/android/model/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 214
    sget-object v11, Lcom/stripe/android/model/Source$Flow;->Companion:Lcom/stripe/android/model/Source$Flow$Companion;

    const-string v12, "flow"

    invoke-static {v0, v12}, Lcom/stripe/android/model/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/stripe/android/model/Source$Flow$Companion;->fromCode(Ljava/lang/String;)Lcom/stripe/android/model/Source$Flow;

    move-result-object v11

    const-string v12, "livemode"

    .line 215
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    .line 399
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_168

    const/4 v6, 0x0

    goto :goto_18e

    .line 403
    :cond_168
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_2d4

    goto :goto_184

    .line 410
    :sswitch_170
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_180

    .line 411
    new-instance v6, Lcom/stripe/android/model/parsers/SourceJsonParser$OwnerJsonParser;

    invoke-direct {v6}, Lcom/stripe/android/model/parsers/SourceJsonParser$OwnerJsonParser;-><init>()V

    invoke-virtual {v6, v2}, Lcom/stripe/android/model/parsers/SourceJsonParser$OwnerJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/Source$Owner;

    move-result-object v6

    goto :goto_181

    :cond_180
    const/4 v6, 0x0

    .line 410
    :goto_181
    check-cast v6, Lcom/stripe/android/model/StripeModel;

    goto :goto_185

    :goto_184
    :sswitch_184
    const/4 v6, 0x0

    .line 439
    :goto_185
    instance-of v2, v6, Lcom/stripe/android/model/Source$Owner;

    if-nez v2, :cond_18a

    const/4 v6, 0x0

    :cond_18a
    check-cast v6, Lcom/stripe/android/model/Source$Owner;

    check-cast v6, Lcom/stripe/android/model/StripeModel;

    :goto_18e
    move-object/from16 v19, v6

    check-cast v19, Lcom/stripe/android/model/Source$Owner;

    .line 440
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19a

    const/4 v6, 0x0

    goto :goto_1c0

    .line 444
    :cond_19a
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_2ee

    goto :goto_1b6

    .line 456
    :sswitch_1a2
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1b2

    .line 457
    new-instance v4, Lcom/stripe/android/model/parsers/SourceJsonParser$ReceiverJsonParser;

    invoke-direct {v4}, Lcom/stripe/android/model/parsers/SourceJsonParser$ReceiverJsonParser;-><init>()V

    invoke-virtual {v4, v2}, Lcom/stripe/android/model/parsers/SourceJsonParser$ReceiverJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/Source$Receiver;

    move-result-object v6

    goto :goto_1b3

    :cond_1b2
    const/4 v6, 0x0

    .line 456
    :goto_1b3
    check-cast v6, Lcom/stripe/android/model/StripeModel;

    goto :goto_1b7

    :goto_1b6
    :sswitch_1b6
    const/4 v6, 0x0

    .line 480
    :goto_1b7
    instance-of v2, v6, Lcom/stripe/android/model/Source$Receiver;

    if-nez v2, :cond_1bc

    const/4 v6, 0x0

    :cond_1bc
    check-cast v6, Lcom/stripe/android/model/Source$Receiver;

    check-cast v6, Lcom/stripe/android/model/StripeModel;

    :goto_1c0
    move-object/from16 v20, v6

    check-cast v20, Lcom/stripe/android/model/Source$Receiver;

    .line 481
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1cc

    const/4 v6, 0x0

    goto :goto_1f2

    .line 485
    :cond_1cc
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_308

    goto :goto_1e8

    .line 502
    :sswitch_1d4
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1e4

    .line 503
    new-instance v3, Lcom/stripe/android/model/parsers/SourceJsonParser$RedirectJsonParser;

    invoke-direct {v3}, Lcom/stripe/android/model/parsers/SourceJsonParser$RedirectJsonParser;-><init>()V

    invoke-virtual {v3, v2}, Lcom/stripe/android/model/parsers/SourceJsonParser$RedirectJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/Source$Redirect;

    move-result-object v6

    goto :goto_1e5

    :cond_1e4
    const/4 v6, 0x0

    .line 502
    :goto_1e5
    check-cast v6, Lcom/stripe/android/model/StripeModel;

    goto :goto_1e9

    :goto_1e8
    :sswitch_1e8
    const/4 v6, 0x0

    .line 521
    :goto_1e9
    instance-of v2, v6, Lcom/stripe/android/model/Source$Redirect;

    if-nez v2, :cond_1ee

    const/4 v6, 0x0

    :cond_1ee
    check-cast v6, Lcom/stripe/android/model/Source$Redirect;

    check-cast v6, Lcom/stripe/android/model/StripeModel;

    :goto_1f2
    move-object/from16 v21, v6

    check-cast v21, Lcom/stripe/android/model/Source$Redirect;

    const-string v2, "source_order"

    .line 219
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_20a

    .line 220
    new-instance v3, Lcom/stripe/android/model/parsers/SourceOrderJsonParser;

    invoke-direct {v3}, Lcom/stripe/android/model/parsers/SourceOrderJsonParser;-><init>()V

    invoke-virtual {v3, v2}, Lcom/stripe/android/model/parsers/SourceOrderJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/SourceOrder;

    move-result-object v2

    move-object/from16 v22, v2

    goto :goto_20c

    :cond_20a
    const/16 v22, 0x0

    :goto_20c
    const-string v2, "statement_descriptor"

    .line 222
    invoke-static {v0, v2}, Lcom/stripe/android/model/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 223
    sget-object v2, Lcom/stripe/android/model/Source$Status;->Companion:Lcom/stripe/android/model/Source$Status$Companion;

    const-string v3, "status"

    invoke-static {v0, v3}, Lcom/stripe/android/model/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/stripe/android/model/Source$Status$Companion;->fromCode(Ljava/lang/String;)Lcom/stripe/android/model/Source$Status;

    move-result-object v26

    .line 228
    sget-object v2, Lcom/stripe/android/model/Source$Usage;->Companion:Lcom/stripe/android/model/Source$Usage$Companion;

    const-string v3, "usage"

    invoke-static {v0, v3}, Lcom/stripe/android/model/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/stripe/android/model/Source$Usage$Companion;->fromCode(Ljava/lang/String;)Lcom/stripe/android/model/Source$Usage;

    move-result-object v27

    const-string v2, "wechat"

    .line 229
    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24a

    .line 230
    new-instance v3, Lcom/stripe/android/model/parsers/WeChatJsonParser;

    invoke-direct {v3}, Lcom/stripe/android/model/parsers/WeChatJsonParser;-><init>()V

    .line 231
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_23e

    goto :goto_243

    :cond_23e
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 230
    :goto_243
    invoke-virtual {v3, v2}, Lcom/stripe/android/model/parsers/WeChatJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/WeChat;

    move-result-object v2

    move-object/from16 v28, v2

    goto :goto_24c

    :cond_24a
    const/16 v28, 0x0

    :goto_24c
    const-string v2, "klarna"

    .line 236
    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26c

    .line 237
    new-instance v3, Lcom/stripe/android/model/parsers/SourceJsonParser$KlarnaJsonParser;

    invoke-direct {v3}, Lcom/stripe/android/model/parsers/SourceJsonParser$KlarnaJsonParser;-><init>()V

    .line 238
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_260

    goto :goto_265

    :cond_260
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 237
    :goto_265
    invoke-virtual {v3, v0}, Lcom/stripe/android/model/parsers/SourceJsonParser$KlarnaJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/Source$Klarna;

    move-result-object v0

    move-object/from16 v29, v0

    goto :goto_26e

    :cond_26c
    const/16 v29, 0x0

    :goto_26e
    const/16 v23, 0x100

    const/16 v24, 0x0

    .line 204
    new-instance v30, Lcom/stripe/android/model/Source;

    move-object/from16 v0, v30

    move-object v2, v7

    move-object v3, v8

    move-object v4, v5

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    move-object v9, v13

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    move-object/from16 v12, v21

    move-object/from16 v13, v26

    move-object/from16 v18, v14

    move-object/from16 v14, v16

    move-object/from16 v19, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v27

    move-object/from16 v19, v28

    move-object/from16 v20, v29

    move-object/from16 v21, v22

    move-object/from16 v22, v25

    invoke-direct/range {v0 .. v24}, Lcom/stripe/android/model/Source;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/android/model/Source$CodeVerification;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/android/model/Source$Flow;Ljava/lang/Boolean;Ljava/util/Map;Lcom/stripe/android/model/Source$Owner;Lcom/stripe/android/model/Source$Receiver;Lcom/stripe/android/model/Source$Redirect;Lcom/stripe/android/model/Source$Status;Ljava/util/Map;Lcom/stripe/android/model/SourceTypeModel;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/Source$Usage;Lcom/stripe/android/model/WeChat;Lcom/stripe/android/model/Source$Klarna;Lcom/stripe/android/model/SourceOrder;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v30

    :sswitch_data_2a0
    .sparse-switch
        -0x30341611 -> :sswitch_cc
        -0x2e430824 -> :sswitch_b2
        0x2e7b10 -> :sswitch_96
        0x653f2b3 -> :sswitch_7c
        0x604b5b2d -> :sswitch_61
        0x618aa970 -> :sswitch_44
    .end sparse-switch

    :sswitch_data_2ba
    .sparse-switch
        -0x30341611 -> :sswitch_12f
        -0x2e430824 -> :sswitch_12f
        0x2e7b10 -> :sswitch_12f
        0x653f2b3 -> :sswitch_12f
        0x604b5b2d -> :sswitch_11b
        0x618aa970 -> :sswitch_12f
    .end sparse-switch

    :sswitch_data_2d4
    .sparse-switch
        -0x30341611 -> :sswitch_184
        -0x2e430824 -> :sswitch_184
        0x2e7b10 -> :sswitch_184
        0x653f2b3 -> :sswitch_170
        0x604b5b2d -> :sswitch_184
        0x618aa970 -> :sswitch_184
    .end sparse-switch

    :sswitch_data_2ee
    .sparse-switch
        -0x30341611 -> :sswitch_1a2
        -0x2e430824 -> :sswitch_1b6
        0x2e7b10 -> :sswitch_1b6
        0x653f2b3 -> :sswitch_1b6
        0x604b5b2d -> :sswitch_1b6
        0x618aa970 -> :sswitch_1b6
    .end sparse-switch

    :sswitch_data_308
    .sparse-switch
        -0x30341611 -> :sswitch_1e8
        -0x2e430824 -> :sswitch_1d4
        0x2e7b10 -> :sswitch_1e8
        0x653f2b3 -> :sswitch_1e8
        0x604b5b2d -> :sswitch_1e8
        0x618aa970 -> :sswitch_1e8
    .end sparse-switch
.end method

.method private final synthetic optStripeJsonModel(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/stripe/android/model/StripeModel;
    .registers 5
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/stripe/android/model/StripeModel;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 250
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 254
    :cond_8
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_b6

    goto/16 :goto_ad

    :sswitch_11
    const-string v0, "sepa_debit"

    .line 280
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ad

    .line 281
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 282
    new-instance p2, Lcom/stripe/android/model/parsers/SourceSepaDebitDataJsonParser;

    invoke-direct {p2}, Lcom/stripe/android/model/parsers/SourceSepaDebitDataJsonParser;-><init>()V

    invoke-virtual {p2, p1}, Lcom/stripe/android/model/parsers/SourceSepaDebitDataJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/SourceTypeModel$SepaDebit;

    move-result-object v1

    .line 281
    :cond_28
    check-cast v1, Lcom/stripe/android/model/StripeModel;

    goto/16 :goto_ad

    :sswitch_2c
    const-string v0, "code_verification"

    .line 255
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ad

    .line 256
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 257
    new-instance p2, Lcom/stripe/android/model/parsers/SourceJsonParser$CodeVerificationJsonParser;

    invoke-direct {p2}, Lcom/stripe/android/model/parsers/SourceJsonParser$CodeVerificationJsonParser;-><init>()V

    invoke-virtual {p2, p1}, Lcom/stripe/android/model/parsers/SourceJsonParser$CodeVerificationJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/Source$CodeVerification;

    move-result-object v1

    .line 256
    :cond_43
    check-cast v1, Lcom/stripe/android/model/StripeModel;

    goto :goto_ad

    :sswitch_46
    const-string v0, "owner"

    .line 260
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ad

    .line 261
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_5d

    .line 262
    new-instance p2, Lcom/stripe/android/model/parsers/SourceJsonParser$OwnerJsonParser;

    invoke-direct {p2}, Lcom/stripe/android/model/parsers/SourceJsonParser$OwnerJsonParser;-><init>()V

    invoke-virtual {p2, p1}, Lcom/stripe/android/model/parsers/SourceJsonParser$OwnerJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/Source$Owner;

    move-result-object v1

    .line 261
    :cond_5d
    check-cast v1, Lcom/stripe/android/model/StripeModel;

    goto :goto_ad

    :sswitch_60
    const-string v0, "card"

    .line 275
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ad

    .line 276
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_77

    .line 277
    new-instance p2, Lcom/stripe/android/model/parsers/SourceCardDataJsonParser;

    invoke-direct {p2}, Lcom/stripe/android/model/parsers/SourceCardDataJsonParser;-><init>()V

    invoke-virtual {p2, p1}, Lcom/stripe/android/model/parsers/SourceCardDataJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/SourceTypeModel$Card;

    move-result-object v1

    .line 276
    :cond_77
    check-cast v1, Lcom/stripe/android/model/StripeModel;

    goto :goto_ad

    :sswitch_7a
    const-string v0, "redirect"

    .line 270
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ad

    .line 271
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_91

    .line 272
    new-instance p2, Lcom/stripe/android/model/parsers/SourceJsonParser$RedirectJsonParser;

    invoke-direct {p2}, Lcom/stripe/android/model/parsers/SourceJsonParser$RedirectJsonParser;-><init>()V

    invoke-virtual {p2, p1}, Lcom/stripe/android/model/parsers/SourceJsonParser$RedirectJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/Source$Redirect;

    move-result-object v1

    .line 271
    :cond_91
    check-cast v1, Lcom/stripe/android/model/StripeModel;

    goto :goto_ad

    :sswitch_94
    const-string v0, "receiver"

    .line 265
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ad

    .line 266
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_ab

    .line 267
    new-instance p2, Lcom/stripe/android/model/parsers/SourceJsonParser$ReceiverJsonParser;

    invoke-direct {p2}, Lcom/stripe/android/model/parsers/SourceJsonParser$ReceiverJsonParser;-><init>()V

    invoke-virtual {p2, p1}, Lcom/stripe/android/model/parsers/SourceJsonParser$ReceiverJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/Source$Receiver;

    move-result-object v1

    .line 266
    :cond_ab
    check-cast v1, Lcom/stripe/android/model/StripeModel;

    :cond_ad
    :goto_ad
    const/4 p1, 0x2

    const-string p2, "T"

    .line 290
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    check-cast v1, Lcom/stripe/android/model/StripeModel;

    return-object v1

    :sswitch_data_b6
    .sparse-switch
        -0x30341611 -> :sswitch_94
        -0x2e430824 -> :sswitch_7a
        0x2e7b10 -> :sswitch_60
        0x653f2b3 -> :sswitch_46
        0x604b5b2d -> :sswitch_2c
        0x618aa970 -> :sswitch_11
    .end sparse-switch
.end method


# virtual methods
.method public final asSourceType(Ljava/lang/String;)Ljava/lang/String;
    .registers 18
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "sepa_debit"

    const-string v2, "multibanco"

    const-string v3, "ideal"

    const-string v4, "giropay"

    const-string v5, "card"

    const-string v6, "p24"

    const-string v7, "eps"

    const-string v8, "wechat"

    const-string v9, "three_d_secure"

    const-string v10, "sofort"

    const-string v11, "klarna"

    const-string v12, "alipay"

    const-string v13, "bancontact"

    const-string v14, "unknown"

    if-nez v0, :cond_22

    goto/16 :goto_9a

    .line 296
    :cond_22
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_9c

    goto/16 :goto_9a

    .line 300
    :sswitch_2b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    move-object v14, v1

    goto/16 :goto_9a

    .line 307
    :sswitch_34
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    move-object v14, v2

    goto/16 :goto_9a

    .line 301
    :sswitch_3d
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    move-object v14, v3

    goto/16 :goto_9a

    .line 299
    :sswitch_46
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    move-object v14, v4

    goto :goto_9a

    .line 297
    :sswitch_4e
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    move-object v14, v5

    goto :goto_9a

    .line 306
    :sswitch_56
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    move-object v14, v6

    goto :goto_9a

    .line 305
    :sswitch_5e
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    move-object v14, v7

    goto :goto_9a

    .line 309
    :sswitch_66
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9a

    .line 308
    :sswitch_6b
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    move-object v14, v8

    goto :goto_9a

    .line 298
    :sswitch_73
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    move-object v14, v9

    goto :goto_9a

    .line 302
    :sswitch_7b
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    move-object v14, v10

    goto :goto_9a

    .line 310
    :sswitch_83
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    move-object v14, v11

    goto :goto_9a

    .line 304
    :sswitch_8b
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    move-object v14, v12

    goto :goto_9a

    .line 303
    :sswitch_93
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    move-object v14, v13

    :cond_9a
    :goto_9a
    return-object v14

    nop

    :sswitch_data_9c
    .sparse-switch
        -0x727c36cf -> :sswitch_93
        -0x545695b6 -> :sswitch_8b
        -0x4349b97b -> :sswitch_83
        -0x357672d9 -> :sswitch_7b
        -0x313022cd -> :sswitch_73
        -0x2f3174da -> :sswitch_6b
        -0x10fa53b6 -> :sswitch_66
        0x18928 -> :sswitch_5e
        0x1aab2 -> :sswitch_56
        0x2e7b10 -> :sswitch_4e
        0x2494da9 -> :sswitch_46
        0x5f6a055 -> :sswitch_3d
        0x4a9d4722 -> :sswitch_34
        0x618aa970 -> :sswitch_2b
    .end sparse-switch
.end method
