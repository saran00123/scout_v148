.class final Lcom/stripe/android/cards/CardWidgetViewModel$cardAccountRangeRepository$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CardWidgetViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/cards/CardWidgetViewModel;-><init>(Landroid/app/Application;Lcom/stripe/android/cards/CardAccountRangeRepository$Factory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/stripe/android/cards/CardAccountRangeRepository;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/android/cards/CardAccountRangeRepository;",
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
.field final synthetic $cardAccountRangeRepositoryFactory:Lcom/stripe/android/cards/CardAccountRangeRepository$Factory;


# direct methods
.method constructor <init>(Lcom/stripe/android/cards/CardAccountRangeRepository$Factory;)V
    .registers 2

    iput-object p1, p0, Lcom/stripe/android/cards/CardWidgetViewModel$cardAccountRangeRepository$2;->$cardAccountRangeRepositoryFactory:Lcom/stripe/android/cards/CardAccountRangeRepository$Factory;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/stripe/android/cards/CardAccountRangeRepository;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/stripe/android/cards/CardWidgetViewModel$cardAccountRangeRepository$2;->$cardAccountRangeRepositoryFactory:Lcom/stripe/android/cards/CardAccountRangeRepository$Factory;

    invoke-interface {v0}, Lcom/stripe/android/cards/CardAccountRangeRepository$Factory;->create()Lcom/stripe/android/cards/CardAccountRangeRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 12
    invoke-virtual {p0}, Lcom/stripe/android/cards/CardWidgetViewModel$cardAccountRangeRepository$2;->invoke()Lcom/stripe/android/cards/CardAccountRangeRepository;

    move-result-object v0

    return-object v0
.end method
