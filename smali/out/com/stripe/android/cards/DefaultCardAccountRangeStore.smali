.class public final Lcom/stripe/android/cards/DefaultCardAccountRangeStore;
.super Ljava/lang/Object;
.source "DefaultCardAccountRangeStore.kt"

# interfaces
.implements Lcom/stripe/android/cards/CardAccountRangeStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/cards/DefaultCardAccountRangeStore$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultCardAccountRangeStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultCardAccountRangeStore.kt\ncom/stripe/android/cards/DefaultCardAccountRangeStore\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,51:1\n1571#2,9:52\n1819#2:61\n1820#2:63\n1580#2:64\n1517#2:65\n1588#2,3:66\n1#3:62\n*E\n*S KotlinDebug\n*F\n+ 1 DefaultCardAccountRangeStore.kt\ncom/stripe/android/cards/DefaultCardAccountRangeStore\n*L\n21#1,9:52\n21#1:61\n21#1:63\n21#1:64\n30#1:65\n30#1,3:66\n21#1:62\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0019\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0012J\u0015\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u0011H\u0001\u00a2\u0006\u0002\u0008\u0015J\u001f\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u0010\u001a\u00020\u0011H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0012J\u001e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0010\u001a\u00020\u00112\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R#\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000b\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/stripe/android/cards/DefaultCardAccountRangeStore;",
        "Lcom/stripe/android/cards/CardAccountRangeStore;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "accountRangeJsonParser",
        "Lcom/stripe/android/model/parsers/AccountRangeJsonParser;",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "getPrefs",
        "()Landroid/content/SharedPreferences;",
        "prefs$delegate",
        "Lkotlin/Lazy;",
        "contains",
        "",
        "bin",
        "Lcom/stripe/android/cards/Bin;",
        "(Lcom/stripe/android/cards/Bin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "createPrefKey",
        "",
        "createPrefKey$stripe_release",
        "get",
        "",
        "Lcom/stripe/android/model/AccountRange;",
        "save",
        "",
        "accountRanges",
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
.field private static final Companion:Lcom/stripe/android/cards/DefaultCardAccountRangeStore$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PREF_FILE:Ljava/lang/String; = "InMemoryCardAccountRangeSource.Store"

.field private static final PREF_KEY_ACCOUNT_RANGES:Ljava/lang/String; = "key_account_ranges"


# instance fields
.field private final accountRangeJsonParser:Lcom/stripe/android/model/parsers/AccountRangeJsonParser;

.field private final context:Landroid/content/Context;

.field private final prefs$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/cards/DefaultCardAccountRangeStore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/cards/DefaultCardAccountRangeStore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/cards/DefaultCardAccountRangeStore;->Companion:Lcom/stripe/android/cards/DefaultCardAccountRangeStore$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/cards/DefaultCardAccountRangeStore;->context:Landroid/content/Context;

    .line 12
    new-instance p1, Lcom/stripe/android/model/parsers/AccountRangeJsonParser;

    invoke-direct {p1}, Lcom/stripe/android/model/parsers/AccountRangeJsonParser;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/cards/DefaultCardAccountRangeStore;->accountRangeJsonParser:Lcom/stripe/android/model/parsers/AccountRangeJsonParser;

    .line 14
    new-instance p1, Lcom/stripe/android/cards/DefaultCardAccountRangeStore$prefs$2;

    invoke-direct {p1, p0}, Lcom/stripe/android/cards/DefaultCardAccountRangeStore$prefs$2;-><init>(Lcom/stripe/android/cards/DefaultCardAccountRangeStore;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/cards/DefaultCardAccountRangeStore;->prefs$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$Companion()Lcom/stripe/android/cards/DefaultCardAccountRangeStore$Companion;
    .registers 1

    sget-object v0, Lcom/stripe/android/cards/DefaultCardAccountRangeStore;->Companion:Lcom/stripe/android/cards/DefaultCardAccountRangeStore$Companion;

    return-object v0
.end method

.method public static final synthetic access$getContext$p(Lcom/stripe/android/cards/DefaultCardAccountRangeStore;)Landroid/content/Context;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/stripe/android/cards/DefaultCardAccountRangeStore;->context:Landroid/content/Context;

    return-object p0
.end method

.method private final getPrefs()Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lcom/stripe/android/cards/DefaultCardAccountRangeStore;->prefs$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public contains(Lcom/stripe/android/cards/Bin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .param p1    # Lcom/stripe/android/cards/Bin;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/cards/Bin;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 41
    invoke-direct {p0}, Lcom/stripe/android/cards/DefaultCardAccountRangeStore;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/stripe/android/cards/DefaultCardAccountRangeStore;->createPrefKey$stripe_release(Lcom/stripe/android/cards/Bin;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final createPrefKey$stripe_release(Lcom/stripe/android/cards/Bin;)Ljava/lang/String;
    .registers 4
    .param p1    # Lcom/stripe/android/cards/Bin;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "bin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_account_ranges:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/stripe/android/cards/Bin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .param p1    # Lcom/stripe/android/cards/Bin;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/cards/Bin;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/stripe/android/model/AccountRange;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 19
    invoke-direct {p0}, Lcom/stripe/android/cards/DefaultCardAccountRangeStore;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/stripe/android/cards/DefaultCardAccountRangeStore;->createPrefKey$stripe_release(Lcom/stripe/android/cards/Bin;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_10

    goto :goto_14

    .line 20
    :cond_10
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    :goto_14
    check-cast p1, Ljava/lang/Iterable;

    .line 52
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/Collection;

    .line 61
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_21
    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 60
    check-cast v0, Ljava/lang/String;

    .line 22
    iget-object v1, p0, Lcom/stripe/android/cards/DefaultCardAccountRangeStore;->accountRangeJsonParser:Lcom/stripe/android/model/parsers/AccountRangeJsonParser;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/stripe/android/model/parsers/AccountRangeJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/AccountRange;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 60
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 64
    :cond_3e
    check-cast p2, Ljava/util/List;

    return-object p2
.end method

.method public save(Lcom/stripe/android/cards/Bin;Ljava/util/List;)V
    .registers 6
    .param p1    # Lcom/stripe/android/cards/Bin;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/cards/Bin;",
            "Ljava/util/List<",
            "Lcom/stripe/android/model/AccountRange;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountRanges"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    check-cast p2, Ljava/lang/Iterable;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 66
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 67
    check-cast v1, Lcom/stripe/android/model/AccountRange;

    .line 31
    iget-object v2, p0, Lcom/stripe/android/cards/DefaultCardAccountRangeStore;->accountRangeJsonParser:Lcom/stripe/android/model/parsers/AccountRangeJsonParser;

    invoke-virtual {v2, v1}, Lcom/stripe/android/model/parsers/AccountRangeJsonParser;->serialize(Lcom/stripe/android/model/AccountRange;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 68
    :cond_37
    check-cast v0, Ljava/util/List;

    .line 65
    check-cast v0, Ljava/lang/Iterable;

    .line 32
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    .line 34
    invoke-direct {p0}, Lcom/stripe/android/cards/DefaultCardAccountRangeStore;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 35
    invoke-virtual {p0, p1}, Lcom/stripe/android/cards/DefaultCardAccountRangeStore;->createPrefKey$stripe_release(Lcom/stripe/android/cards/Bin;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 36
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
