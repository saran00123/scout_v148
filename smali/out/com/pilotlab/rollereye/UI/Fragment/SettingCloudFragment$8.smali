.class Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$8;
.super Ljava/lang/Object;
.source "SettingCloudFragment.java"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/BiFunction<",
        "Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;",
        "Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)V
    .registers 2

    .line 315
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$8;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean;)Ljava/lang/Object;
    .registers 4
    .param p1    # Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$8;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$702(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;)Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;

    .line 319
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$8;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {p1, p2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$902(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean;)Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean;

    .line 320
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 315
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;

    check-cast p2, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean;

    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$8;->apply(Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
