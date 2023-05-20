.class final Lcom/stripe/android/cards/DefaultCardAccountRangeStore$prefs$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultCardAccountRangeStore.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/cards/DefaultCardAccountRangeStore;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/content/SharedPreferences;",
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
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/android/cards/DefaultCardAccountRangeStore;


# direct methods
.method constructor <init>(Lcom/stripe/android/cards/DefaultCardAccountRangeStore;)V
    .registers 2

    iput-object p1, p0, Lcom/stripe/android/cards/DefaultCardAccountRangeStore$prefs$2;->this$0:Lcom/stripe/android/cards/DefaultCardAccountRangeStore;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/content/SharedPreferences;
    .registers 4

    .line 15
    iget-object v0, p0, Lcom/stripe/android/cards/DefaultCardAccountRangeStore$prefs$2;->this$0:Lcom/stripe/android/cards/DefaultCardAccountRangeStore;

    invoke-static {v0}, Lcom/stripe/android/cards/DefaultCardAccountRangeStore;->access$getContext$p(Lcom/stripe/android/cards/DefaultCardAccountRangeStore;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/stripe/android/cards/DefaultCardAccountRangeStore;->access$Companion()Lcom/stripe/android/cards/DefaultCardAccountRangeStore$Companion;

    const-string v1, "InMemoryCardAccountRangeSource.Store"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lcom/stripe/android/cards/DefaultCardAccountRangeStore$prefs$2;->invoke()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
