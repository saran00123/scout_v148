.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$13;
.super Ljava/lang/Object;
.source "PatrolActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)V
    .registers 2

    .line 704
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$13;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 707
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$13;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->finish()V

    return-void
.end method
