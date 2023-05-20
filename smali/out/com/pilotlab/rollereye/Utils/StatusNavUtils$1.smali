.class final Lcom/pilotlab/rollereye/Utils/StatusNavUtils$1;
.super Ljava/lang/Object;
.source "StatusNavUtils.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/Utils/StatusNavUtils;->hideNavigationBar(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$window:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/pilotlab/rollereye/Utils/StatusNavUtils$1;->val$window:Landroid/view/Window;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .registers 3

    .line 105
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_9

    const/16 p1, 0x1706

    goto :goto_b

    :cond_9
    const/16 p1, 0x707

    .line 110
    :goto_b
    iget-object v0, p0, Lcom/pilotlab/rollereye/Utils/StatusNavUtils$1;->val$window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
