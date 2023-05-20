.class public final Lcom/stripe/android/networking/StripeResponse;
.super Ljava/lang/Object;
.source "StripeResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/networking/StripeResponse$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStripeResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StripeResponse.kt\ncom/stripe/android/networking/StripeResponse\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,76:1\n256#2,2:77\n*E\n*S KotlinDebug\n*F\n+ 1 StripeResponse.kt\ncom/stripe/android/networking/StripeResponse\n*L\n66#1,2:77\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0010 \n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0008\u0080\u0008\u0018\u0000 -2\u00020\u0001:\u0001-B5\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u001a\u0008\u0002\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\u000e\u0010\u001f\u001a\u00020\u0003H\u00c0\u0003\u00a2\u0006\u0002\u0008 J\u0010\u0010!\u001a\u0004\u0018\u00010\u0005H\u00c0\u0003\u00a2\u0006\u0002\u0008\"J \u0010#\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00080\u0007H\u00c0\u0003\u00a2\u0006\u0002\u0008$J;\u0010%\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u001a\u0008\u0002\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00080\u0007H\u00c6\u0001J\u0013\u0010&\u001a\u00020\u00122\u0008\u0010\'\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\u001d\u0010(\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00082\u0006\u0010)\u001a\u00020\u0005H\u0000\u00a2\u0006\u0002\u0008*J\t\u0010+\u001a\u00020\u0003H\u00d6\u0001J\u0008\u0010,\u001a\u00020\u0005H\u0016R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00080\u0007X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u0012X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u0012X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0014R\u0016\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u001c8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006."
    }
    d2 = {
        "Lcom/stripe/android/networking/StripeResponse;",
        "",
        "code",
        "",
        "body",
        "",
        "headers",
        "",
        "",
        "(ILjava/lang/String;Ljava/util/Map;)V",
        "getBody$stripe_release",
        "()Ljava/lang/String;",
        "getCode$stripe_release",
        "()I",
        "contentType",
        "getHeaders$stripe_release",
        "()Ljava/util/Map;",
        "isError",
        "",
        "isError$stripe_release",
        "()Z",
        "isOk",
        "isOk$stripe_release",
        "requestId",
        "Lcom/stripe/android/networking/RequestId;",
        "getRequestId$stripe_release",
        "()Lcom/stripe/android/networking/RequestId;",
        "responseJson",
        "Lorg/json/JSONObject;",
        "getResponseJson$stripe_release",
        "()Lorg/json/JSONObject;",
        "component1",
        "component1$stripe_release",
        "component2",
        "component2$stripe_release",
        "component3",
        "component3$stripe_release",
        "copy",
        "equals",
        "other",
        "getHeaderValue",
        "key",
        "getHeaderValue$stripe_release",
        "hashCode",
        "toString",
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
.field private static final CONTENT_TYPE_HEADER:Ljava/lang/String; = "Content-Type"

.field private static final Companion:Lcom/stripe/android/networking/StripeResponse$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final REQUEST_ID_HEADER:Ljava/lang/String; = "Request-Id"


# instance fields
.field private final body:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final code:I

.field private final contentType:Ljava/lang/String;

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isError:Z

.field private final isOk:Z

.field private final requestId:Lcom/stripe/android/networking/RequestId;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/networking/StripeResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/networking/StripeResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/networking/StripeResponse;->Companion:Lcom/stripe/android/networking/StripeResponse$Companion;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;)V
    .registers 5
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "headers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/stripe/android/networking/StripeResponse;->code:I

    iput-object p2, p0, Lcom/stripe/android/networking/StripeResponse;->body:Ljava/lang/String;

    iput-object p3, p0, Lcom/stripe/android/networking/StripeResponse;->headers:Ljava/util/Map;

    .line 29
    iget p1, p0, Lcom/stripe/android/networking/StripeResponse;->code:I

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_18

    move p1, p2

    goto :goto_19

    :cond_18
    move p1, p3

    :goto_19
    iput-boolean p1, p0, Lcom/stripe/android/networking/StripeResponse;->isOk:Z

    .line 30
    iget p1, p0, Lcom/stripe/android/networking/StripeResponse;->code:I

    if-lt p1, v0, :cond_25

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_24

    goto :goto_25

    :cond_24
    move p2, p3

    :cond_25
    :goto_25
    iput-boolean p2, p0, Lcom/stripe/android/networking/StripeResponse;->isError:Z

    .line 32
    sget-object p1, Lcom/stripe/android/networking/RequestId;->Companion:Lcom/stripe/android/networking/RequestId$Companion;

    const-string p2, "Request-Id"

    .line 33
    invoke-virtual {p0, p2}, Lcom/stripe/android/networking/StripeResponse;->getHeaderValue$stripe_release(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_39

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_3a

    :cond_39
    move-object p2, p3

    .line 32
    :goto_3a
    invoke-virtual {p1, p2}, Lcom/stripe/android/networking/RequestId$Companion;->fromString(Ljava/lang/String;)Lcom/stripe/android/networking/RequestId;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/networking/StripeResponse;->requestId:Lcom/stripe/android/networking/RequestId;

    const-string p1, "Content-Type"

    .line 36
    invoke-virtual {p0, p1}, Lcom/stripe/android/networking/StripeResponse;->getHeaderValue$stripe_release(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4f

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Ljava/lang/String;

    :cond_4f
    iput-object p3, p0, Lcom/stripe/android/networking/StripeResponse;->contentType:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_8

    .line 27
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p3

    :cond_8
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/android/networking/StripeResponse;-><init>(ILjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/android/networking/StripeResponse;ILjava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/android/networking/StripeResponse;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget p1, p0, Lcom/stripe/android/networking/StripeResponse;->code:I

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lcom/stripe/android/networking/StripeResponse;->body:Ljava/lang/String;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/stripe/android/networking/StripeResponse;->headers:Ljava/util/Map;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/android/networking/StripeResponse;->copy(ILjava/lang/String;Ljava/util/Map;)Lcom/stripe/android/networking/StripeResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1$stripe_release()I
    .registers 2

    iget v0, p0, Lcom/stripe/android/networking/StripeResponse;->code:I

    return v0
.end method

.method public final component2$stripe_release()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/networking/StripeResponse;->body:Ljava/lang/String;

    return-object v0
.end method

.method public final component3$stripe_release()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/networking/StripeResponse;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;Ljava/util/Map;)Lcom/stripe/android/networking/StripeResponse;
    .registers 5
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/stripe/android/networking/StripeResponse;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "headers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/android/networking/StripeResponse;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/android/networking/StripeResponse;-><init>(ILjava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_25

    instance-of v0, p1, Lcom/stripe/android/networking/StripeResponse;

    if-eqz v0, :cond_23

    check-cast p1, Lcom/stripe/android/networking/StripeResponse;

    iget v0, p0, Lcom/stripe/android/networking/StripeResponse;->code:I

    iget v1, p1, Lcom/stripe/android/networking/StripeResponse;->code:I

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lcom/stripe/android/networking/StripeResponse;->body:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/networking/StripeResponse;->body:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/stripe/android/networking/StripeResponse;->headers:Ljava/util/Map;

    iget-object p1, p1, Lcom/stripe/android/networking/StripeResponse;->headers:Ljava/util/Map;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_25

    :cond_23
    const/4 p1, 0x0

    return p1

    :cond_25
    :goto_25
    const/4 p1, 0x1

    return p1
.end method

.method public final getBody$stripe_release()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/stripe/android/networking/StripeResponse;->body:Ljava/lang/String;

    return-object v0
.end method

.method public final getCode$stripe_release()I
    .registers 2

    .line 19
    iget v0, p0, Lcom/stripe/android/networking/StripeResponse;->code:I

    return v0
.end method

.method public final getHeaderValue$stripe_release(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/stripe/android/networking/StripeResponse;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 77
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/util/Map$Entry;

    .line 67
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v3, p1, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_2e

    :cond_2d
    move-object v1, v2

    .line 78
    :goto_2e
    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_39

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    :cond_39
    return-object v2
.end method

.method public final getHeaders$stripe_release()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/stripe/android/networking/StripeResponse;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public final getRequestId$stripe_release()Lcom/stripe/android/networking/RequestId;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/stripe/android/networking/StripeResponse;->requestId:Lcom/stripe/android/networking/RequestId;

    return-object v0
.end method

.method public final getResponseJson$stripe_release()Lorg/json/JSONObject;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/APIException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/stripe/android/networking/StripeResponse;->body:Ljava/lang/String;

    if-eqz v0, :cond_54

    .line 43
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_59

    :catch_a
    move-exception v1

    .line 45
    new-instance v10, Lcom/stripe/android/exception/APIException;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n                            Exception while parsing response body.\n                              Status code: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget v6, p0, Lcom/stripe/android/networking/StripeResponse;->code:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\n                              Request-Id: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v6, p0, Lcom/stripe/android/networking/StripeResponse;->requestId:Lcom/stripe/android/networking/RequestId;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\n                              Content-Type: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v6, p0, Lcom/stripe/android/networking/StripeResponse;->contentType:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n                              Body: \""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"\n                            "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 54
    move-object v7, v1

    check-cast v7, Ljava/lang/Throwable;

    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v2, v10

    .line 45
    invoke-direct/range {v2 .. v9}, Lcom/stripe/android/exception/APIException;-><init>(Lcom/stripe/android/StripeError;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v10, Ljava/lang/Throwable;

    throw v10

    .line 57
    :cond_54
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :goto_59
    return-object v1
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/stripe/android/networking/StripeResponse;->code:I

    invoke-static {v0}, L$r8$java8methods$utility$Integer$hashCode$II;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/android/networking/StripeResponse;->body:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/android/networking/StripeResponse;->headers:Ljava/util/Map;

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1e
    add-int/2addr v0, v2

    return v0
.end method

.method public final isError$stripe_release()Z
    .registers 2

    .line 30
    iget-boolean v0, p0, Lcom/stripe/android/networking/StripeResponse;->isError:Z

    return v0
.end method

.method public final isOk$stripe_release()Z
    .registers 2

    .line 29
    iget-boolean v0, p0, Lcom/stripe/android/networking/StripeResponse;->isOk:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request-Id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/networking/StripeResponse;->requestId:Lcom/stripe/android/networking/RequestId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Status Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/stripe/android/networking/StripeResponse;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
