.class public final Lcom/stripe/android/EphemeralKeyManager;
.super Ljava/lang/Object;
.source "EphemeralKeyManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/EphemeralKeyManager$KeyManagerListener;,
        Lcom/stripe/android/EphemeralKeyManager$ClientKeyUpdateListener;,
        Lcom/stripe/android/EphemeralKeyManager$Factory;,
        Lcom/stripe/android/EphemeralKeyManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEphemeralKeyManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EphemeralKeyManager.kt\ncom/stripe/android/EphemeralKeyManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,163:1\n1#2:164\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 \'2\u00020\u0001:\u0004&\'()BG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0012\u0008\u0002\u0010\n\u001a\u000c\u0012\u0004\u0012\u00020\u000c0\u000bj\u0002`\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\u000fJ\u0015\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0000\u00a2\u0006\u0002\u0008\u001cJ\u0017\u0010\u001d\u001a\u00020\t2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0000\u00a2\u0006\u0002\u0008\u001eJ\u001a\u0010\u001f\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010 \u001a\u0004\u0018\u00010\u0011H\u0002J \u0010!\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020\u00112\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0011H\u0002R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\n\u001a\u000c\u0012\u0004\u0012\u00020\u000c0\u000bj\u0002`\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lcom/stripe/android/EphemeralKeyManager;",
        "",
        "ephemeralKeyProvider",
        "Lcom/stripe/android/EphemeralKeyProvider;",
        "listener",
        "Lcom/stripe/android/EphemeralKeyManager$KeyManagerListener;",
        "operationIdFactory",
        "Lcom/stripe/android/OperationIdFactory;",
        "shouldPrefetchEphemeralKey",
        "",
        "timeSupplier",
        "Lkotlin/Function0;",
        "",
        "Lcom/stripe/android/TimeSupplier;",
        "timeBufferInSeconds",
        "(Lcom/stripe/android/EphemeralKeyProvider;Lcom/stripe/android/EphemeralKeyManager$KeyManagerListener;Lcom/stripe/android/OperationIdFactory;ZLkotlin/jvm/functions/Function0;J)V",
        "apiVersion",
        "",
        "ephemeralKey",
        "Lcom/stripe/android/EphemeralKey;",
        "getEphemeralKey$stripe_release",
        "()Lcom/stripe/android/EphemeralKey;",
        "setEphemeralKey$stripe_release",
        "(Lcom/stripe/android/EphemeralKey;)V",
        "retrieveEphemeralKey",
        "",
        "operation",
        "Lcom/stripe/android/EphemeralOperation;",
        "retrieveEphemeralKey$stripe_release",
        "shouldRefreshKey",
        "shouldRefreshKey$stripe_release",
        "updateKey",
        "key",
        "updateKeyError",
        "operationId",
        "errorCode",
        "",
        "errorMessage",
        "ClientKeyUpdateListener",
        "Companion",
        "Factory",
        "KeyManagerListener",
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
.field private static final Companion:Lcom/stripe/android/EphemeralKeyManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final REFRESH_BUFFER_IN_SECONDS:J = 0x1eL


# instance fields
.field private final apiVersion:Ljava/lang/String;

.field private synthetic ephemeralKey:Lcom/stripe/android/EphemeralKey;

.field private final ephemeralKeyProvider:Lcom/stripe/android/EphemeralKeyProvider;

.field private final listener:Lcom/stripe/android/EphemeralKeyManager$KeyManagerListener;

.field private final timeBufferInSeconds:J

.field private final timeSupplier:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/EphemeralKeyManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/EphemeralKeyManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/EphemeralKeyManager;->Companion:Lcom/stripe/android/EphemeralKeyManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/android/EphemeralKeyProvider;Lcom/stripe/android/EphemeralKeyManager$KeyManagerListener;Lcom/stripe/android/OperationIdFactory;ZLkotlin/jvm/functions/Function0;J)V
    .registers 9
    .param p1    # Lcom/stripe/android/EphemeralKeyProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/EphemeralKeyManager$KeyManagerListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/OperationIdFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/EphemeralKeyProvider;",
            "Lcom/stripe/android/EphemeralKeyManager$KeyManagerListener;",
            "Lcom/stripe/android/OperationIdFactory;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    const-string v0, "ephemeralKeyProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operationIdFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeSupplier"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/EphemeralKeyManager;->ephemeralKeyProvider:Lcom/stripe/android/EphemeralKeyProvider;

    iput-object p2, p0, Lcom/stripe/android/EphemeralKeyManager;->listener:Lcom/stripe/android/EphemeralKeyManager$KeyManagerListener;

    iput-object p5, p0, Lcom/stripe/android/EphemeralKeyManager;->timeSupplier:Lkotlin/jvm/functions/Function0;

    iput-wide p6, p0, Lcom/stripe/android/EphemeralKeyManager;->timeBufferInSeconds:J

    .line 18
    sget-object p1, Lcom/stripe/android/ApiVersion;->Companion:Lcom/stripe/android/ApiVersion$Companion;

    invoke-virtual {p1}, Lcom/stripe/android/ApiVersion$Companion;->get$stripe_release()Lcom/stripe/android/ApiVersion;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/android/ApiVersion;->getCode$stripe_release()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/EphemeralKeyManager;->apiVersion:Ljava/lang/String;

    if-eqz p4, :cond_3f

    .line 26
    new-instance p1, Lcom/stripe/android/EphemeralOperation$RetrieveKey;

    .line 27
    invoke-interface {p3}, Lcom/stripe/android/OperationIdFactory;->create()Ljava/lang/String;

    move-result-object p2

    .line 28
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p3

    .line 26
    invoke-direct {p1, p2, p3}, Lcom/stripe/android/EphemeralOperation$RetrieveKey;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    check-cast p1, Lcom/stripe/android/EphemeralOperation;

    .line 25
    invoke-virtual {p0, p1}, Lcom/stripe/android/EphemeralKeyManager;->retrieveEphemeralKey$stripe_release(Lcom/stripe/android/EphemeralOperation;)V

    :cond_3f
    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/android/EphemeralKeyProvider;Lcom/stripe/android/EphemeralKeyManager$KeyManagerListener;Lcom/stripe/android/OperationIdFactory;ZLkotlin/jvm/functions/Function0;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 19

    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_d

    .line 13
    new-instance v0, Lcom/stripe/android/StripeOperationIdFactory;

    invoke-direct {v0}, Lcom/stripe/android/StripeOperationIdFactory;-><init>()V

    check-cast v0, Lcom/stripe/android/OperationIdFactory;

    move-object v4, v0

    goto :goto_e

    :cond_d
    move-object v4, p3

    :goto_e
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    move v5, v0

    goto :goto_16

    :cond_15
    move v5, p4

    :goto_16
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_20

    .line 15
    sget-object v0, Lcom/stripe/android/EphemeralKeyManager$1;->INSTANCE:Lcom/stripe/android/EphemeralKeyManager$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    move-object v6, v0

    goto :goto_21

    :cond_20
    move-object v6, p5

    :goto_21
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_29

    const-wide/16 v0, 0x1e

    move-wide v7, v0

    goto :goto_2a

    :cond_29
    move-wide v7, p6

    :goto_2a
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 16
    invoke-direct/range {v1 .. v8}, Lcom/stripe/android/EphemeralKeyManager;-><init>(Lcom/stripe/android/EphemeralKeyProvider;Lcom/stripe/android/EphemeralKeyManager$KeyManagerListener;Lcom/stripe/android/OperationIdFactory;ZLkotlin/jvm/functions/Function0;J)V

    return-void
.end method

.method public static final synthetic access$updateKey(Lcom/stripe/android/EphemeralKeyManager;Lcom/stripe/android/EphemeralOperation;Ljava/lang/String;)V
    .registers 3

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/stripe/android/EphemeralKeyManager;->updateKey(Lcom/stripe/android/EphemeralOperation;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$updateKeyError(Lcom/stripe/android/EphemeralKeyManager;Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/android/EphemeralKeyManager;->updateKeyError(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private final updateKey(Lcom/stripe/android/EphemeralOperation;Ljava/lang/String;)V
    .registers 7

    const/16 v0, 0x1f4

    if-nez p2, :cond_10

    .line 53
    iget-object p2, p0, Lcom/stripe/android/EphemeralKeyManager;->listener:Lcom/stripe/android/EphemeralKeyManager$KeyManagerListener;

    .line 54
    invoke-virtual {p1}, Lcom/stripe/android/EphemeralOperation;->getId$stripe_release()Ljava/lang/String;

    move-result-object p1

    const-string v1, "EphemeralKeyUpdateListener.onKeyUpdate was called with a null value"

    .line 53
    invoke-interface {p2, p1, v0, v1}, Lcom/stripe/android/EphemeralKeyManager$KeyManagerListener;->onKeyError(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 60
    :cond_10
    :try_start_10
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/stripe/android/EphemeralKeyManager;

    .line 61
    new-instance v2, Lcom/stripe/android/model/parsers/EphemeralKeyJsonParser;

    invoke-direct {v2}, Lcom/stripe/android/model/parsers/EphemeralKeyJsonParser;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/stripe/android/model/parsers/EphemeralKeyJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/EphemeralKey;

    move-result-object p2

    .line 62
    iput-object p2, v1, Lcom/stripe/android/EphemeralKeyManager;->ephemeralKey:Lcom/stripe/android/EphemeralKey;

    .line 60
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_29} :catch_2a

    goto :goto_35

    :catch_2a
    move-exception p2

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 64
    :goto_35
    invoke-static {p2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_43

    check-cast p2, Lcom/stripe/android/EphemeralKey;

    .line 66
    iget-object v0, p0, Lcom/stripe/android/EphemeralKeyManager;->listener:Lcom/stripe/android/EphemeralKeyManager$KeyManagerListener;

    invoke-interface {v0, p2, p1}, Lcom/stripe/android/EphemeralKeyManager$KeyManagerListener;->onKeyUpdate(Lcom/stripe/android/EphemeralKey;Lcom/stripe/android/EphemeralOperation;)V

    goto :goto_8b

    .line 70
    :cond_43
    instance-of p2, v1, Lorg/json/JSONException;

    const-string v2, "\n                        "

    if-eqz p2, :cond_66

    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n                        Received an ephemeral key that could not be parsed. See https://stripe.com/docs/mobile/android/basic for more details.\n                        \n                        "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 75
    invoke-static {p2}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_82

    .line 78
    :cond_66
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n                        Received an invalid ephemeral key. See https://stripe.com/docs/mobile/android/basic for more details.\n                        \n                        "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 82
    invoke-static {p2}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 85
    :goto_82
    iget-object v1, p0, Lcom/stripe/android/EphemeralKeyManager;->listener:Lcom/stripe/android/EphemeralKeyManager$KeyManagerListener;

    .line 86
    invoke-virtual {p1}, Lcom/stripe/android/EphemeralOperation;->getId$stripe_release()Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-interface {v1, p1, v0, p2}, Lcom/stripe/android/EphemeralKeyManager$KeyManagerListener;->onKeyError(Ljava/lang/String;ILjava/lang/String;)V

    :goto_8b
    return-void
.end method

.method private final updateKeyError(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 95
    check-cast v0, Lcom/stripe/android/EphemeralKey;

    iput-object v0, p0, Lcom/stripe/android/EphemeralKeyManager;->ephemeralKey:Lcom/stripe/android/EphemeralKey;

    .line 96
    iget-object v0, p0, Lcom/stripe/android/EphemeralKeyManager;->listener:Lcom/stripe/android/EphemeralKeyManager$KeyManagerListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/stripe/android/EphemeralKeyManager$KeyManagerListener;->onKeyError(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getEphemeralKey$stripe_release()Lcom/stripe/android/EphemeralKey;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/stripe/android/EphemeralKeyManager;->ephemeralKey:Lcom/stripe/android/EphemeralKey;

    return-object v0
.end method

.method public final synthetic retrieveEphemeralKey$stripe_release(Lcom/stripe/android/EphemeralOperation;)V
    .registers 5

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/stripe/android/EphemeralKeyManager;->ephemeralKey:Lcom/stripe/android/EphemeralKey;

    if-eqz v0, :cond_12

    invoke-virtual {p0, v0}, Lcom/stripe/android/EphemeralKeyManager;->shouldRefreshKey$stripe_release(Lcom/stripe/android/EphemeralKey;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_12

    :cond_10
    const/4 v1, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v1, 0x1

    :goto_13
    if-nez v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_1f

    .line 39
    iget-object v1, p0, Lcom/stripe/android/EphemeralKeyManager;->listener:Lcom/stripe/android/EphemeralKeyManager$KeyManagerListener;

    invoke-interface {v1, v0, p1}, Lcom/stripe/android/EphemeralKeyManager$KeyManagerListener;->onKeyUpdate(Lcom/stripe/android/EphemeralKey;Lcom/stripe/android/EphemeralOperation;)V

    goto :goto_2d

    .line 40
    :cond_1f
    iget-object v0, p0, Lcom/stripe/android/EphemeralKeyManager;->ephemeralKeyProvider:Lcom/stripe/android/EphemeralKeyProvider;

    .line 41
    iget-object v1, p0, Lcom/stripe/android/EphemeralKeyManager;->apiVersion:Ljava/lang/String;

    .line 42
    new-instance v2, Lcom/stripe/android/EphemeralKeyManager$ClientKeyUpdateListener;

    invoke-direct {v2, p0, p1}, Lcom/stripe/android/EphemeralKeyManager$ClientKeyUpdateListener;-><init>(Lcom/stripe/android/EphemeralKeyManager;Lcom/stripe/android/EphemeralOperation;)V

    check-cast v2, Lcom/stripe/android/EphemeralKeyUpdateListener;

    .line 40
    invoke-interface {v0, v1, v2}, Lcom/stripe/android/EphemeralKeyProvider;->createEphemeralKey(Ljava/lang/String;Lcom/stripe/android/EphemeralKeyUpdateListener;)V

    :goto_2d
    return-void
.end method

.method public final setEphemeralKey$stripe_release(Lcom/stripe/android/EphemeralKey;)V
    .registers 2
    .param p1    # Lcom/stripe/android/EphemeralKey;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 21
    iput-object p1, p0, Lcom/stripe/android/EphemeralKeyManager;->ephemeralKey:Lcom/stripe/android/EphemeralKey;

    return-void
.end method

.method public final shouldRefreshKey$stripe_release(Lcom/stripe/android/EphemeralKey;)Z
    .registers 7
    .param p1    # Lcom/stripe/android/EphemeralKey;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 132
    :cond_4
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/stripe/android/EphemeralKeyManager;->timeSupplier:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    .line 133
    iget-wide v3, p0, Lcom/stripe/android/EphemeralKeyManager;->timeBufferInSeconds:J

    add-long/2addr v1, v3

    .line 134
    invoke-virtual {p1}, Lcom/stripe/android/EphemeralKey;->getExpires$stripe_release()J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-gez p1, :cond_22

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method
