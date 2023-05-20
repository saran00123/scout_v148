.class public final Lcom/stripe/android/model/parsers/CardMetadataJsonParser;
.super Ljava/lang/Object;
.source "CardMetadataJsonParser.kt"

# interfaces
.implements Lcom/stripe/android/model/parsers/ModelJsonParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/android/model/parsers/ModelJsonParser<",
        "Lcom/stripe/android/model/CardMetadata;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCardMetadataJsonParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardMetadataJsonParser.kt\ncom/stripe/android/model/parsers/CardMetadataJsonParser\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,22:1\n1571#2,9:23\n1819#2:32\n1820#2:34\n1580#2:35\n1#3:33\n*E\n*S KotlinDebug\n*F\n+ 1 CardMetadataJsonParser.kt\ncom/stripe/android/model/parsers/CardMetadataJsonParser\n*L\n16#1,9:23\n16#1:32\n16#1:34\n16#1:35\n16#1:33\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/android/model/parsers/CardMetadataJsonParser;",
        "Lcom/stripe/android/model/parsers/ModelJsonParser;",
        "Lcom/stripe/android/model/CardMetadata;",
        "bin",
        "Lcom/stripe/android/cards/Bin;",
        "(Lcom/stripe/android/cards/Bin;)V",
        "accountRangeJsonParser",
        "Lcom/stripe/android/model/parsers/AccountRangeJsonParser;",
        "parse",
        "json",
        "Lorg/json/JSONObject;",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final accountRangeJsonParser:Lcom/stripe/android/model/parsers/AccountRangeJsonParser;

.field private final bin:Lcom/stripe/android/cards/Bin;


# direct methods
.method public constructor <init>(Lcom/stripe/android/cards/Bin;)V
    .registers 3
    .param p1    # Lcom/stripe/android/cards/Bin;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/model/parsers/CardMetadataJsonParser;->bin:Lcom/stripe/android/cards/Bin;

    .line 11
    new-instance p1, Lcom/stripe/android/model/parsers/AccountRangeJsonParser;

    invoke-direct {p1}, Lcom/stripe/android/model/parsers/AccountRangeJsonParser;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/model/parsers/CardMetadataJsonParser;->accountRangeJsonParser:Lcom/stripe/android/model/parsers/AccountRangeJsonParser;

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/CardMetadata;
    .registers 7
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_e

    goto :goto_13

    :cond_e
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    :goto_13
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 32
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_29
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    move-object v2, v0

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    .line 17
    iget-object v3, p0, Lcom/stripe/android/model/parsers/CardMetadataJsonParser;->accountRangeJsonParser:Lcom/stripe/android/model/parsers/AccountRangeJsonParser;

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "data.getJSONObject(it)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/stripe/android/model/parsers/AccountRangeJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/AccountRange;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 31
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 35
    :cond_4b
    check-cast v1, Ljava/util/List;

    .line 19
    new-instance p1, Lcom/stripe/android/model/CardMetadata;

    iget-object v0, p0, Lcom/stripe/android/model/parsers/CardMetadataJsonParser;->bin:Lcom/stripe/android/cards/Bin;

    invoke-direct {p1, v0, v1}, Lcom/stripe/android/model/CardMetadata;-><init>(Lcom/stripe/android/cards/Bin;Ljava/util/List;)V

    return-object p1
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/StripeModel;
    .registers 2

    .line 8
    invoke-virtual {p0, p1}, Lcom/stripe/android/model/parsers/CardMetadataJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/CardMetadata;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/model/StripeModel;

    return-object p1
.end method
