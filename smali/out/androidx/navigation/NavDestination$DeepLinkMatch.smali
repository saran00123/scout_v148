.class Landroidx/navigation/NavDestination$DeepLinkMatch;
.super Ljava/lang/Object;
.source "NavDestination.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavDestination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeepLinkMatch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/navigation/NavDestination$DeepLinkMatch;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDestination:Landroidx/navigation/NavDestination;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mIsExactDeepLink:Z

.field private final mMatchingArgs:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Z)V
    .registers 4
    .param p1    # Landroidx/navigation/NavDestination;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->mDestination:Landroidx/navigation/NavDestination;

    .line 84
    iput-object p2, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->mMatchingArgs:Landroid/os/Bundle;

    .line 85
    iput-boolean p3, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->mIsExactDeepLink:Z

    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/navigation/NavDestination$DeepLinkMatch;)I
    .registers 3

    .line 101
    iget-boolean v0, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->mIsExactDeepLink:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->mIsExactDeepLink:Z

    if-nez v0, :cond_a

    const/4 p1, 0x1

    return p1

    .line 103
    :cond_a
    iget-boolean v0, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->mIsExactDeepLink:Z

    if-nez v0, :cond_14

    iget-boolean v0, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->mIsExactDeepLink:Z

    if-eqz v0, :cond_14

    const/4 p1, -0x1

    return p1

    .line 107
    :cond_14
    iget-object v0, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->mMatchingArgs:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    iget-object p1, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->mMatchingArgs:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 74
    check-cast p1, Landroidx/navigation/NavDestination$DeepLinkMatch;

    invoke-virtual {p0, p1}, Landroidx/navigation/NavDestination$DeepLinkMatch;->compareTo(Landroidx/navigation/NavDestination$DeepLinkMatch;)I

    move-result p1

    return p1
.end method

.method getDestination()Landroidx/navigation/NavDestination;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 90
    iget-object v0, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->mDestination:Landroidx/navigation/NavDestination;

    return-object v0
.end method

.method getMatchingArgs()Landroid/os/Bundle;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 95
    iget-object v0, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->mMatchingArgs:Landroid/os/Bundle;

    return-object v0
.end method
