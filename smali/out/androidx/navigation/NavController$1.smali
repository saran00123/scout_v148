.class Landroidx/navigation/NavController$1;
.super Landroidx/navigation/NavigatorProvider;
.source "NavController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/navigation/NavController;


# direct methods
.method constructor <init>(Landroidx/navigation/NavController;)V
    .registers 2

    .line 84
    iput-object p1, p0, Landroidx/navigation/NavController$1;->this$0:Landroidx/navigation/NavController;

    invoke-direct {p0}, Landroidx/navigation/NavigatorProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public addNavigator(Ljava/lang/String;Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/navigation/Navigator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;)",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;"
        }
    .end annotation

    .line 90
    invoke-super {p0, p1, p2}, Landroidx/navigation/NavigatorProvider;->addNavigator(Ljava/lang/String;Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    move-result-object p1

    if-eq p1, p2, :cond_16

    if-eqz p1, :cond_f

    .line 93
    iget-object v0, p0, Landroidx/navigation/NavController$1;->this$0:Landroidx/navigation/NavController;

    iget-object v0, v0, Landroidx/navigation/NavController;->mOnBackPressListener:Landroidx/navigation/Navigator$OnNavigatorBackPressListener;

    invoke-virtual {p1, v0}, Landroidx/navigation/Navigator;->removeOnNavigatorBackPressListener(Landroidx/navigation/Navigator$OnNavigatorBackPressListener;)V

    .line 95
    :cond_f
    iget-object v0, p0, Landroidx/navigation/NavController$1;->this$0:Landroidx/navigation/NavController;

    iget-object v0, v0, Landroidx/navigation/NavController;->mOnBackPressListener:Landroidx/navigation/Navigator$OnNavigatorBackPressListener;

    invoke-virtual {p2, v0}, Landroidx/navigation/Navigator;->addOnNavigatorBackPressListener(Landroidx/navigation/Navigator$OnNavigatorBackPressListener;)V

    :cond_16
    return-object p1
.end method
