.class public final Lcom/stripe/android/view/AuthActivityStarter$Host$Companion;
.super Ljava/lang/Object;
.source "AuthActivityStarter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/view/AuthActivityStarter$Host;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008\u0007J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tH\u0000\u00a2\u0006\u0002\u0008\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/android/view/AuthActivityStarter$Host$Companion;",
        "",
        "()V",
        "create",
        "Lcom/stripe/android/view/AuthActivityStarter$Host;",
        "activity",
        "Landroid/app/Activity;",
        "create$stripe_release",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
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

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Lcom/stripe/android/view/AuthActivityStarter$Host$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create$stripe_release(Landroid/app/Activity;)Lcom/stripe/android/view/AuthActivityStarter$Host;
    .registers 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/stripe/android/view/AuthActivityStarter$Host;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/stripe/android/view/AuthActivityStarter$Host;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final synthetic create$stripe_release(Landroidx/fragment/app/Fragment;)Lcom/stripe/android/view/AuthActivityStarter$Host;
    .registers 5

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/stripe/android/view/AuthActivityStarter$Host;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "fragment.requireActivity()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/stripe/android/view/AuthActivityStarter$Host;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
