.class public final La/a/a/a/e/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a/a/a/e/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/e/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:La/a/a/a/d/i;

.field public final b:Ljavax/crypto/SecretKey;

.field public final c:La/a/a/a/c/c;


# direct methods
.method public constructor <init>(La/a/a/a/d/i;Ljavax/crypto/SecretKey;La/a/a/a/c/c;)V
    .registers 5
    .param p1    # La/a/a/a/d/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljavax/crypto/SecretKey;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # La/a/a/a/c/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "messageTransformer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "secretKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorReporter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/e/h$a;->a:La/a/a/a/d/i;

    iput-object p2, p0, La/a/a/a/e/h$a;->b:Ljavax/crypto/SecretKey;

    iput-object p3, p0, La/a/a/a/e/h$a;->c:La/a/a/a/c/c;

    return-void
.end method


# virtual methods
.method public final a(La/a/a/a/f/a;ILjava/lang/String;Ljava/lang/String;)La/a/a/a/f/c;
    .registers 18

    move-object v0, p1

    new-instance v12, La/a/a/a/f/c;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, La/a/a/a/f/c$c;->b:La/a/a/a/f/c$c;

    .line 1
    iget-object v2, v0, La/a/a/a/f/a;->c:Ljava/lang/String;

    .line 2
    iget-object v10, v0, La/a/a/a/f/a;->d:Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;

    .line 3
    iget-object v1, v0, La/a/a/a/f/a;->b:Ljava/lang/String;

    .line 4
    iget-object v9, v0, La/a/a/a/f/a;->a:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v8, "CRes"

    const/4 v11, 0x4

    move-object v0, v12

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 5
    invoke-direct/range {v0 .. v11}, La/a/a/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/a/a/a/f/c$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;I)V

    return-object v12
.end method

.method public a(La/a/a/a/f/a;La/a/a/a/e/o;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 35
    .param p1    # La/a/a/a/f/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # La/a/a/a/e/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/a/f/a;",
            "La/a/a/a/e/o;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "La/a/a/a/e/g;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    .line 6
    iget-boolean v3, v0, La/a/a/a/e/o;->a:Z

    const-string v4, "payload.optString(FIELD_ERROR_DESCRIPTION)"

    const-string v5, "errorDescription"

    const/4 v6, 0x4

    const-string v7, "errorComponent"

    const-string v8, "payload.optString(FIELD_ERROR_CODE)"

    const-string v9, "errorCode"

    const-string v10, "dsTransID"

    const-string v11, "acsTransID"

    const-string/jumbo v12, "threeDSServerTransID"

    const-string v13, "Erro"

    const-string v14, "messageType"

    const/16 v16, 0x0

    const-string v15, "payload"

    if-eqz v3, :cond_c4

    .line 7
    new-instance v2, Lorg/json/JSONObject;

    .line 8
    iget-object v0, v0, La/a/a/a/e/o;->b:Ljava/lang/String;

    .line 9
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 11
    new-instance v0, La/a/a/a/e/g$a;

    .line 12
    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 13
    invoke-static {}, La/a/a/a/f/c$c;->values()[La/a/a/a/f/c$c;

    move-result-object v8

    const/4 v9, 0x0

    :goto_59
    if-ge v9, v6, :cond_6b

    aget-object v10, v8, v9

    .line 14
    iget-object v11, v10, La/a/a/a/f/c$c;->a:Ljava/lang/String;

    .line 15
    invoke-static {v11, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_68

    move-object/from16 v22, v10

    goto :goto_6d

    :cond_68
    add-int/lit8 v9, v9, 0x1

    goto :goto_59

    :cond_6b
    move-object/from16 v22, v16

    .line 16
    :goto_6d
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "errorDetail"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "payload.optString(FIELD_ERROR_DETAIL)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "errorMessageType"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v6, "messageVersion"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "payload.optString(FIELD_MESSAGE_VERSION)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "sdkTransID"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a0

    new-instance v7, Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;

    invoke-direct {v7, v2}, Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;-><init>(Ljava/lang/String;)V

    move-object/from16 v27, v7

    goto :goto_a2

    :cond_a0
    move-object/from16 v27, v16

    :goto_a2
    new-instance v2, La/a/a/a/f/c;

    move-object/from16 v17, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v5

    move-object/from16 v24, v4

    move-object/from16 v26, v6

    invoke-direct/range {v17 .. v27}, La/a/a/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/a/a/a/f/c$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;)V

    .line 17
    invoke-direct {v0, v2}, La/a/a/a/e/g$a;-><init>(La/a/a/a/f/c;)V

    goto :goto_c1

    :cond_b5
    new-instance v0, La/a/a/a/e/g$b;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Received a JSON response that was not an Error message."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, La/a/a/a/e/g$b;-><init>(Ljava/lang/Throwable;)V

    :goto_c1
    move-object v5, v1

    goto/16 :goto_267

    .line 18
    :cond_c4
    :try_start_c4
    iget-object v0, v0, La/a/a/a/e/o;->b:Ljava/lang/String;

    .line 19
    iget-object v3, v1, La/a/a/a/e/h$a;->a:La/a/a/a/d/i;

    iget-object v6, v1, La/a/a/a/e/h$a;->b:Ljavax/crypto/SecretKey;

    invoke-interface {v3, v0, v6}, La/a/a/a/d/i;->a(Ljava/lang/String;Ljavax/crypto/SecretKey;)Lorg/json/JSONObject;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_d2
    .catchall {:try_start_c4 .. :try_end_d2} :catchall_d3

    goto :goto_dc

    :catchall_d3
    move-exception v0

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_dc
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_10f

    iget-object v6, v1, La/a/a/a/e/h$a;->c:La/a/a/a/c/c;

    new-instance v1, Ljava/lang/RuntimeException;

    move-object/from16 v18, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v5

    const-string v5, "\n                            Failed to process challenge response.\n\n                            CReq = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, La/a/a/a/f/a;->b()La/a/a/a/f/a;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\n                            "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v6, v1}, La/a/a/a/c/c;->a(Ljava/lang/Throwable;)V

    goto :goto_113

    :cond_10f
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    :goto_113
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_24f

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "creqData"

    .line 21
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b6

    .line 23
    new-instance v1, La/a/a/a/e/g$a;

    .line 24
    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-static {}, La/a/a/a/f/c$c;->values()[La/a/a/a/f/c$c;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    :goto_152
    if-ge v5, v6, :cond_164

    aget-object v7, v4, v5

    .line 26
    iget-object v8, v7, La/a/a/a/f/c$c;->a:Ljava/lang/String;

    .line 27
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_161

    move-object/from16 v25, v7

    goto :goto_166

    :cond_161
    add-int/lit8 v5, v5, 0x1

    goto :goto_152

    :cond_164
    move-object/from16 v25, v16

    :goto_166
    move-object/from16 v3, v19

    .line 28
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v18

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "errorDetail"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "payload.optString(FIELD_ERROR_DETAIL)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "errorMessageType"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v5, "messageVersion"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "payload.optString(FIELD_MESSAGE_VERSION)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "sdkTransID"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19d

    new-instance v6, Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;

    invoke-direct {v6, v0}, Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;-><init>(Ljava/lang/String;)V

    move-object/from16 v30, v6

    goto :goto_19f

    :cond_19d
    move-object/from16 v30, v16

    :goto_19f
    new-instance v0, La/a/a/a/f/c;

    move-object/from16 v20, v0

    move-object/from16 v24, v2

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v29, v5

    invoke-direct/range {v20 .. v30}, La/a/a/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/a/a/a/f/c$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;)V

    .line 29
    invoke-direct {v1, v0}, La/a/a/a/e/g$a;-><init>(La/a/a/a/f/c;)V

    move-object/from16 v5, p0

    :goto_1b3
    move-object v0, v1

    goto/16 :goto_267

    :cond_1b6
    :try_start_1b6
    sget-object v1, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;->Companion:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$a;

    invoke-virtual {v1, v0}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$a;->a(Lorg/json/JSONObject;)Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1c0
    .catchall {:try_start_1b6 .. :try_end_1c0} :catchall_1c1

    goto :goto_1ca

    :catchall_1c1
    move-exception v0

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1ca
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_231

    check-cast v0, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;

    .line 30
    iget-object v1, v2, La/a/a/a/f/a;->d:Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;

    .line 31
    invoke-virtual {v0}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;->getSdkTransId()Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f8

    .line 32
    iget-object v1, v2, La/a/a/a/f/a;->b:Ljava/lang/String;

    .line 33
    invoke-virtual {v0}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;->getServerTransId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f8

    .line 34
    iget-object v1, v2, La/a/a/a/f/a;->c:Ljava/lang/String;

    .line 35
    invoke-virtual {v0}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;->getAcsTransId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f8

    const/4 v15, 0x1

    goto :goto_1f9

    :cond_1f8
    const/4 v15, 0x0

    :goto_1f9
    if-nez v15, :cond_20d

    .line 36
    new-instance v0, La/a/a/a/e/g$a;

    const/16 v1, 0x12d

    const-string v3, "Transaction ID received is not valid for the receiving component."

    const-string v4, "The Transaction ID received was invalid."

    move-object/from16 v5, p0

    invoke-virtual {v5, v2, v1, v3, v4}, La/a/a/a/e/h$a;->a(La/a/a/a/f/a;ILjava/lang/String;Ljava/lang/String;)La/a/a/a/f/c;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/a/e/g$a;-><init>(La/a/a/a/f/c;)V

    goto :goto_267

    :cond_20d
    move-object/from16 v5, p0

    .line 37
    iget-object v1, v2, La/a/a/a/f/a;->a:Ljava/lang/String;

    .line 38
    invoke-virtual {v0}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;->getMessageVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22b

    .line 39
    new-instance v0, La/a/a/a/e/g$a;

    .line 40
    iget-object v1, v2, La/a/a/a/f/a;->a:Ljava/lang/String;

    const/16 v3, 0x66

    const-string v4, "Message Version Number received is not valid for the receiving component."

    .line 41
    invoke-virtual {v5, v2, v3, v4, v1}, La/a/a/a/e/h$a;->a(La/a/a/a/f/a;ILjava/lang/String;Ljava/lang/String;)La/a/a/a/f/c;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/a/e/g$a;-><init>(La/a/a/a/f/c;)V

    goto :goto_267

    :cond_22b
    new-instance v1, La/a/a/a/e/g$c;

    invoke-direct {v1, v2, v0}, La/a/a/a/e/g$c;-><init>(La/a/a/a/f/a;Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;)V

    goto :goto_1b3

    :cond_231
    move-object/from16 v5, p0

    instance-of v0, v1, La/a/a/a/f/b;

    if-eqz v0, :cond_249

    new-instance v0, La/a/a/a/e/g$a;

    check-cast v1, La/a/a/a/f/b;

    .line 42
    iget v3, v1, La/a/a/a/f/b;->a:I

    .line 43
    iget-object v4, v1, La/a/a/a/f/b;->b:Ljava/lang/String;

    .line 44
    iget-object v1, v1, La/a/a/a/f/b;->c:Ljava/lang/String;

    .line 45
    invoke-virtual {v5, v2, v3, v4, v1}, La/a/a/a/e/h$a;->a(La/a/a/a/f/a;ILjava/lang/String;Ljava/lang/String;)La/a/a/a/f/c;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/a/e/g$a;-><init>(La/a/a/a/f/c;)V

    goto :goto_267

    :cond_249
    new-instance v0, La/a/a/a/e/g$b;

    invoke-direct {v0, v1}, La/a/a/a/e/g$b;-><init>(Ljava/lang/Throwable;)V

    goto :goto_267

    :cond_24f
    move-object/from16 v5, p0

    .line 46
    new-instance v0, La/a/a/a/e/g$a;

    const/16 v3, 0x12e

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_25c

    goto :goto_25e

    :cond_25c
    const-string v1, ""

    :goto_25e
    const-string v4, "Data could not be decrypted by the receiving system due to technical or other reason."

    invoke-virtual {v5, v2, v3, v4, v1}, La/a/a/a/e/h$a;->a(La/a/a/a/f/a;ILjava/lang/String;Ljava/lang/String;)La/a/a/a/f/c;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/a/e/g$a;-><init>(La/a/a/a/f/c;)V

    :goto_267
    return-object v0
.end method
