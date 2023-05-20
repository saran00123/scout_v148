.class public final Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;
    .registers 39
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/a/f/b;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "cresJson"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageType"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "CRes"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    xor-int/2addr v0, v4

    const/16 v5, 0x65

    if-nez v0, :cond_2f1

    const-string v0, "challengeCompletionInd"

    .line 2
    invoke-virtual {v1, v2, v0, v4}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v12

    new-instance v15, Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;

    const-string v0, "sdkTransID"

    invoke-virtual {v1, v2, v0}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-direct {v15, v0}, Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;-><init>(Ljava/util/UUID;)V

    const-string v0, "threeDSServerTransID"

    invoke-virtual {v1, v2, v0}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v0, "getTransactionId(cresJso\u2026RVER_TRANS_ID).toString()"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acsTransID"

    invoke-virtual {v1, v2, v0}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v0, "getTransactionId(cresJso\u2026_ACS_TRANS_ID).toString()"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$a;->c(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p0 .. p1}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$a;->b(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v22

    if-eqz v12, :cond_107

    .line 3
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_5e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;->access$getFINAL_CRES_FIELDS$cp()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_75

    goto :goto_5e

    :cond_75
    new-instance v0, La/a/a/a/f/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid data element for final CRes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Message is not final CRes"

    invoke-direct {v0, v5, v3, v2}, La/a/a/a/f/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_8e
    new-instance v0, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    .line 5
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "transStatus"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v9, La/a/a/a/g/d;->a:La/a/a/a/g/d;

    invoke-virtual {v9, v2}, La/a/a/a/g/d;->a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_100

    if-nez v2, :cond_c7

    :cond_c5
    const/4 v6, 0x0

    goto :goto_e0

    .line 6
    :cond_c7
    invoke-static {}, La/a/a/a/e/d0;->values()[La/a/a/a/e/d0;

    move-result-object v9

    const/16 v6, 0x8

    const/4 v5, 0x0

    :goto_ce
    if-ge v5, v6, :cond_c5

    aget-object v6, v9, v5

    .line 7
    iget-object v14, v6, La/a/a/a/e/d0;->a:Ljava/lang/String;

    .line 8
    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_db

    goto :goto_e0

    :cond_db
    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x8

    goto :goto_ce

    :goto_e0
    if-eqz v6, :cond_f9

    .line 9
    iget-object v2, v6, La/a/a/a/e/d0;->a:Ljava/lang/String;

    move-object/from16 v34, v2

    const v35, 0x7be7fdc

    const/16 v36, 0x0

    move-object v6, v0

    move-object v9, v4

    const/4 v2, 0x0

    move-object v14, v2

    move-object v5, v15

    const/4 v2, 0x0

    move-object v15, v2

    move-object/from16 v29, v5

    .line 10
    invoke-direct/range {v6 .. v36}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$Image;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$Image;Ljava/lang/String;Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_2d3

    .line 11
    :cond_f9
    sget-object v0, La/a/a/a/f/b;->d:La/a/a/a/f/b$a;

    invoke-virtual {v0, v3}, La/a/a/a/f/b$a;->a(Ljava/lang/String;)La/a/a/a/f/b;

    move-result-object v0

    throw v0

    :cond_100
    sget-object v0, La/a/a/a/f/b;->d:La/a/a/a/f/b$a;

    invoke-virtual {v0, v3}, La/a/a/a/f/b$a;->b(Ljava/lang/String;)La/a/a/a/f/b;

    move-result-object v0

    throw v0

    :cond_107
    move-object v5, v15

    const-string v0, "challengeInfoTextIndicator"

    const/4 v6, 0x0

    .line 12
    invoke-virtual {v1, v2, v0, v6}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v17

    .line 13
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resendInformationLabel"

    .line 14
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_121

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v28, v9

    goto :goto_123

    :cond_121
    const/16 v28, 0x0

    :goto_123
    if-eqz v28, :cond_137

    .line 15
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_12c

    goto :goto_12d

    :cond_12c
    move v4, v6

    :goto_12d
    if-nez v4, :cond_130

    goto :goto_137

    :cond_130
    sget-object v2, La/a/a/a/f/b;->d:La/a/a/a/f/b$a;

    invoke-virtual {v2, v0}, La/a/a/a/f/b$a;->a(Ljava/lang/String;)La/a/a/a/f/b;

    move-result-object v0

    throw v0

    .line 16
    :cond_137
    :goto_137
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "challengeSelectInfo"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_144

    move-object v0, v2

    goto :goto_145

    :cond_144
    const/4 v0, 0x0

    :goto_145
    if-eqz v0, :cond_16c

    sget-object v9, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;->Companion:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$a;

    :try_start_149
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_151
    .catchall {:try_start_149 .. :try_end_151} :catchall_152

    goto :goto_15b

    :catchall_152
    move-exception v0

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_15b
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v9

    if-nez v9, :cond_165

    move-object v9, v0

    check-cast v9, Lorg/json/JSONArray;

    goto :goto_16d

    :cond_165
    sget-object v0, La/a/a/a/f/b;->d:La/a/a/a/f/b$a;

    invoke-virtual {v0, v4}, La/a/a/a/f/b$a;->a(Ljava/lang/String;)La/a/a/a/f/b;

    move-result-object v0

    throw v0

    :cond_16c
    const/4 v9, 0x0

    .line 17
    :goto_16d
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acsUiType"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v10, La/a/a/a/g/d;->a:La/a/a/a/g/d;

    invoke-virtual {v10, v4}, La/a/a/a/g/d;->a(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2ea

    sget-object v10, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;->j:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c$a;

    .line 18
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;->values()[Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;

    move-result-object v10

    const/4 v11, 0x5

    move v13, v6

    :goto_189
    if-ge v13, v11, :cond_19a

    aget-object v14, v10, v13

    .line 19
    iget-object v15, v14, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;->a:Ljava/lang/String;

    .line 20
    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_197

    move-object v11, v14

    goto :goto_19b

    :cond_197
    add-int/lit8 v13, v13, 0x1

    goto :goto_189

    :cond_19a
    const/4 v11, 0x0

    :goto_19b
    if-eqz v11, :cond_2e3

    .line 21
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiType"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "submitAuthenticationLabel"

    .line 22
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1b3

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v15, v10

    goto :goto_1b4

    :cond_1b3
    const/4 v15, 0x0

    .line 23
    :goto_1b4
    sget-object v10, La/a/a/a/g/d;->a:La/a/a/a/g/d;

    invoke-virtual {v10, v15}, La/a/a/a/g/d;->a(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1c8

    .line 24
    iget-boolean v13, v11, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;->c:Z

    if-nez v13, :cond_1c1

    goto :goto_1c8

    .line 25
    :cond_1c1
    sget-object v0, La/a/a/a/f/b;->d:La/a/a/a/f/b$a;

    invoke-virtual {v0, v4}, La/a/a/a/f/b$a;->b(Ljava/lang/String;)La/a/a/a/f/b;

    move-result-object v0

    throw v0

    .line 26
    :cond_1c8
    :goto_1c8
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "acsHTML"

    .line 27
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1db

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_1dc

    :cond_1db
    const/4 v13, 0x0

    .line 28
    :goto_1dc
    invoke-virtual {v10, v13}, La/a/a/a/g/d;->a(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1ee

    sget-object v14, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;->h:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;

    if-eq v11, v14, :cond_1e7

    goto :goto_1ee

    :cond_1e7
    sget-object v0, La/a/a/a/f/b;->d:La/a/a/a/f/b$a;

    invoke-virtual {v0, v4}, La/a/a/a/f/b$a;->b(Ljava/lang/String;)La/a/a/a/f/b;

    move-result-object v0

    throw v0

    :cond_1ee
    :goto_1ee
    invoke-virtual {v1, v13}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oobContinueLabel"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, La/a/a/a/g/d;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_210

    sget-object v10, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;->g:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;

    if-eq v11, v10, :cond_209

    goto :goto_210

    :cond_209
    sget-object v2, La/a/a/a/f/b;->d:La/a/a/a/f/b$a;

    invoke-virtual {v2, v0}, La/a/a/a/f/b$a;->b(Ljava/lang/String;)La/a/a/a/f/b;

    move-result-object v0

    throw v0

    .line 30
    :cond_210
    :goto_210
    sget-object v0, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$ChallengeSelectOption;->Companion:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$ChallengeSelectOption$a;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v9, :cond_21a

    const/16 v18, 0x0

    goto :goto_25d

    :cond_21a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    :goto_223
    if-ge v6, v10, :cond_25b

    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    if-eqz v13, :cond_250

    invoke-virtual {v13}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v16, v9

    new-instance v9, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$ChallengeSelectOption;

    move/from16 v18, v10

    const-string v10, "name"

    invoke-static {v14, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "text"

    invoke-static {v13, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v14, v13}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$ChallengeSelectOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_254

    :cond_250
    move-object/from16 v16, v9

    move/from16 v18, v10

    :goto_254
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v9, v16

    move/from16 v10, v18

    goto :goto_223

    :cond_25b
    move-object/from16 v18, v0

    .line 32
    :goto_25d
    new-instance v0, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;

    move-object v6, v0

    const-string v9, "acsHTMLRefresh"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v9, "challengeInfoHeader"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v9, "challengeInfoLabel"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v9, "challengeInfoText"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v30, v15

    move-object v15, v9

    const-string v9, "challengeAddInfo"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v9, "expandInfoLabel"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v9, "expandInfoText"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sget-object v9, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$Image;->Companion:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$Image$a;

    move-object/from16 v35, v0

    const-string v0, "issuerImage"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$Image$a;->a(Lorg/json/JSONObject;)Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$Image;

    move-result-object v21

    const-string v0, "oobAppURL"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v0, "oobAppLabel"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v0, "psImage"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$Image$a;->a(Lorg/json/JSONObject;)Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$Image;

    move-result-object v27

    const-string v0, "whitelistingInfoText"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v0, "whyInfoLabel"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v0, "whyInfoText"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v34, ""

    move-object v9, v4

    move-object/from16 v26, v3

    move-object/from16 v29, v5

    invoke-direct/range {v6 .. v34}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$Image;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$Image;Ljava/lang/String;Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v35

    :goto_2d3
    invoke-virtual {v0}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;->isValidForUi$3ds2sdk_release()Z

    move-result v2

    if-eqz v2, :cond_2da

    return-object v0

    :cond_2da
    sget-object v0, La/a/a/a/f/b;->d:La/a/a/a/f/b$a;

    const-string v2, "UI fields missing"

    invoke-virtual {v0, v2}, La/a/a/a/f/b$a;->b(Ljava/lang/String;)La/a/a/a/f/b;

    move-result-object v0

    throw v0

    .line 33
    :cond_2e3
    sget-object v2, La/a/a/a/f/b;->d:La/a/a/a/f/b$a;

    invoke-virtual {v2, v0}, La/a/a/a/f/b$a;->a(Ljava/lang/String;)La/a/a/a/f/b;

    move-result-object v0

    throw v0

    :cond_2ea
    sget-object v2, La/a/a/a/f/b;->d:La/a/a/a/f/b$a;

    invoke-virtual {v2, v0}, La/a/a/a/f/b$a;->b(Ljava/lang/String;)La/a/a/a/f/b;

    move-result-object v0

    throw v0

    .line 34
    :cond_2f1
    new-instance v0, La/a/a/a/f/b;

    const-string v2, "Message is not CRes"

    const-string v3, "Invalid Message Type"

    invoke-direct {v0, v5, v2, v3}, La/a/a/a/f/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    sget-object v1, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;->Companion:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$a;

    const/16 v1, 0x8

    :try_start_7
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const-string v1, "Base64.decode(encodedHtml, Base64.URL_SAFE)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1c

    goto :goto_25

    :catchall_1c
    move-exception p1

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_25
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    move-object p1, v0

    :cond_2c
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_2f
    return-object v0
.end method

.method public final a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/UUID;
    .registers 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/a/f/b;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cresJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fieldName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, La/a/a/a/g/d;->a:La/a/a/a/g/d;

    invoke-virtual {v0, p1}, La/a/a/a/g/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    :try_start_16
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    const-string v0, "UUID.fromString(transId)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_20

    return-object p1

    :catchall_20
    move-exception p1

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_35

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_35
    sget-object p1, La/a/a/a/f/b;->d:La/a/a/a/f/b$a;

    invoke-virtual {p1, p2}, La/a/a/a/f/b$a;->a(Ljava/lang/String;)La/a/a/a/f/b;

    move-result-object p1

    throw p1

    :cond_3c
    sget-object p1, La/a/a/a/f/b;->d:La/a/a/a/f/b$a;

    invoke-virtual {p1, p2}, La/a/a/a/f/b$a;->b(Ljava/lang/String;)La/a/a/a/f/b;

    move-result-object p1

    throw p1
.end method

.method public final a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .registers 5
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/a/f/b;
        }
    .end annotation

    const-string v0, "cresJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fieldName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_1e

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2a

    :cond_17
    sget-object p1, La/a/a/a/f/b;->d:La/a/a/a/f/b$a;

    invoke-virtual {p1, p2}, La/a/a/a/f/b$a;->b(Ljava/lang/String;)La/a/a/a/f/b;

    move-result-object p1

    throw p1

    .line 35
    :cond_1e
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    if-eqz p1, :cond_4e

    .line 36
    invoke-static {}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;->access$getYES_NO_VALUES$cp()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    if-eqz p3, :cond_47

    sget-object p3, La/a/a/a/g/d;->a:La/a/a/a/g/d;

    invoke-virtual {p3, p1}, La/a/a/a/g/d;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_47

    sget-object p1, La/a/a/a/f/b;->d:La/a/a/a/f/b$a;

    invoke-virtual {p1, p2}, La/a/a/a/f/b$a;->b(Ljava/lang/String;)La/a/a/a/f/b;

    move-result-object p1

    goto :goto_4d

    :cond_47
    sget-object p1, La/a/a/a/f/b;->d:La/a/a/a/f/b$a;

    invoke-virtual {p1, p2}, La/a/a/a/f/b$a;->a(Ljava/lang/String;)La/a/a/a/f/b;

    move-result-object p1

    :goto_4d
    throw p1

    :cond_4e
    const-string p2, "Y"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b(Lorg/json/JSONObject;)Ljava/util/List;
    .registers 12
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/stripe/android/stripe3ds2/transactions/MessageExtension;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/a/f/b;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "cresJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/stripe/android/stripe3ds2/transactions/MessageExtension;->Companion:Lcom/stripe/android/stripe3ds2/transactions/MessageExtension$a;

    const-string v1, "messageExtension"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/stripe/android/stripe3ds2/transactions/MessageExtension$a;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/stripe/android/stripe3ds2/transactions/MessageExtension;

    invoke-virtual {v4}, Lcom/stripe/android/stripe3ds2/transactions/MessageExtension;->getCriticalityIndicator()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-virtual {v4}, Lcom/stripe/android/stripe3ds2/transactions/MessageExtension;->isProcessable()Z

    move-result v4

    if-nez v4, :cond_37

    goto :goto_38

    :cond_37
    const/4 v3, 0x0

    :goto_38
    if-eqz v3, :cond_1c

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_3e
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    if-nez v1, :cond_46

    goto :goto_6a

    :cond_46
    new-instance p1, La/a/a/a/f/b;

    sget-object v9, La/a/a/a/f/d;->f:La/a/a/a/f/d;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    const-string v1, ","

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "protocolError"

    .line 1
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "detail"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xca

    const-string v2, "Critical message extension not recognised."

    invoke-direct {p1, v1, v2, v0}, La/a/a/a/f/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    throw p1

    :cond_6a
    :goto_6a
    return-object p1
.end method

.method public final c(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/a/f/b;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cresJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageVersion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    if-eqz p1, :cond_1d

    return-object p1

    :cond_1d
    sget-object p1, La/a/a/a/f/b;->d:La/a/a/a/f/b$a;

    invoke-virtual {p1, v0}, La/a/a/a/f/b$a;->b(Ljava/lang/String;)La/a/a/a/f/b;

    move-result-object p1

    throw p1
.end method
