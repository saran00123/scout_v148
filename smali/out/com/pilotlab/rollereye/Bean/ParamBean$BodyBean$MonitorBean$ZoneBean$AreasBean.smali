.class public Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean;
.super Ljava/lang/Object;
.source "ParamBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AreasBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;
    }
.end annotation


# instance fields
.field private contour:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;",
            ">;"
        }
    .end annotation
.end field

.field private inside:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContour()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean;->contour:Ljava/util/List;

    return-object v0
.end method

.method public isInside()Z
    .registers 2

    .line 179
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean;->inside:Z

    return v0
.end method

.method public setContour(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;",
            ">;)V"
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean;->contour:Ljava/util/List;

    return-void
.end method

.method public setInside(Z)V
    .registers 2

    .line 183
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean;->inside:Z

    return-void
.end method
