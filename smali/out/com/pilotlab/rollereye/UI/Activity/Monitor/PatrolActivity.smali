.class public Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;
.source "PatrolActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$onItemCallback;


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_patrol_empty_ry:Landroid/widget/RelativeLayout;

.field private activity_patrol_enlarge:Landroid/widget/ImageButton;

.field private activity_patrol_new_route:Landroid/widget/Button;

.field private activity_patrol_path_rv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

.field private activity_patrol_schedule_ly:Landroid/widget/RelativeLayout;

.field private activity_patrol_surface_view:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

.field private activity_patrol_videoView:Landroid/widget/FrameLayout;

.field private activity_patrol_videoView_bg:Landroid/widget/ImageView;

.field private center_title:Landroid/widget/TextView;

.field private checkDefaultWiFiDirectDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

.field private checkDownloadDisposable:Lio/reactivex/disposables/Disposable;

.field private countCameraStatus:I

.field private editDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

.field private h:I

.field index_bframe:J

.field index_iframe:J

.field private isShowVideo:Z

.field private layout_left:Landroid/widget/LinearLayout;

.field private myCheckeStatusDisposable:Lio/reactivex/disposables/Disposable;

.field private myHandler:Landroid/os/Handler;

.field private p2PdownloadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/P2P/P2PDownload;",
            ">;"
        }
    .end annotation
.end field

.field private player:Lcom/pilotlab/ffmpeg/ffmpeg;

.field private right_btn:Landroid/widget/ImageButton;

.field private routeAdapter:Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;

.field private route_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/WayPointBean;",
            ">;"
        }
    .end annotation
.end field

.field private u:[B

.field private u_len:[I

.field private v:[B

.field private v_len:[I

.field private w:I

.field private y:[B

.field private y_len:[I


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 77
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;-><init>()V

    const-string v0, "PatrolActivity"

    .line 83
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->countCameraStatus:I

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->route_list:Ljava/util/List;

    const/16 v1, 0x800

    .line 100
    iput v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->w:I

    const/16 v1, 0x47e

    .line 101
    iput v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->h:I

    .line 102
    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->w:I

    iget v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->h:I

    mul-int v3, v1, v2

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->y:[B

    mul-int v3, v1, v2

    .line 103
    div-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->u:[B

    mul-int/2addr v1, v2

    .line 104
    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->v:[B

    const/4 v1, 0x1

    .line 106
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->y_len:[I

    .line 107
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->u_len:[I

    .line 108
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->v_len:[I

    .line 113
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->isShowVideo:Z

    const-wide/16 v0, 0x0

    .line 117
    iput-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->index_iframe:J

    .line 118
    iput-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->index_bframe:J

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PdownloadList:Ljava/util/List;

    return-void
.end method

.method private ScaleViewPort(II)V
    .registers 10

    .line 322
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->activity_patrol_surface_view:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    invoke-virtual {v0}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->getWidth()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->activity_patrol_surface_view:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    invoke-virtual {v2}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->getHeight()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x3ffc71c720000000L    # 1.7777777910232544

    cmpg-double v0, v0, v2

    if-gez v0, :cond_21

    .line 323
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->activity_patrol_surface_view:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    invoke-virtual {v0}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->getHeight()I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, p2

    goto :goto_29

    .line 325
    :cond_21
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->activity_patrol_surface_view:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    invoke-virtual {v0}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->getWidth()I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, p1

    :goto_29
    div-double/2addr v0, v2

    int-to-double v2, p1

    mul-double/2addr v2, v0

    double-to-int v2, v2

    int-to-double v3, p2

    mul-double/2addr v3, v0

    double-to-int v3, v3

    .line 330
    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->activity_patrol_surface_view:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    invoke-virtual {v4, p1, p2}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->updateRenderWidthHeight(II)V

    const v4, 0x7f0a0128

    .line 331
    invoke-virtual {p0, v4}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 332
    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 333
    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 334
    invoke-virtual {p0, v4}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Width:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -Height:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scale:"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "neww:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -newh:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;I)V
    .registers 2

    .line 77
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->deleteSchedule(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Ljava/util/List;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->route_list:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)[B
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->y:[B

    return-object p0
.end method

.method static synthetic access$1100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)[I
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->y_len:[I

    return-object p0
.end method

.method static synthetic access$1200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)[B
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->u:[B

    return-object p0
.end method

.method static synthetic access$1300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)[I
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->u_len:[I

    return-object p0
.end method

.method static synthetic access$1400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)[B
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->v:[B

    return-object p0
.end method

.method static synthetic access$1500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)[I
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->v_len:[I

    return-object p0
.end method

.method static synthetic access$1600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->activity_patrol_surface_view:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->myCheckeStatusDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/rollereye/Bean/SystemStatus;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/rollereye/Bean/SystemStatus;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/rollereye/Bean/SystemStatus;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/rollereye/Bean/SystemStatus;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Landroid/widget/Button;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->activity_patrol_new_route:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)I
    .registers 1

    .line 77
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->countCameraStatus:I

    return p0
.end method

.method static synthetic access$2508(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)I
    .registers 3

    .line 77
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->countCameraStatus:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->countCameraStatus:I

    return v0
.end method

.method static synthetic access$2600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)V
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->startCamera()V

    return-void
.end method

.method static synthetic access$2702(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->checkDownloadDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Ljava/util/List;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PdownloadList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->editDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Landroid/os/Handler;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->myHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)V
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->cancelNav()V

    return-void
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->routeAdapter:Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->activity_patrol_empty_ry:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;II)V
    .registers 3

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->ScaleViewPort(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Z
    .registers 1

    .line 77
    iget-boolean p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->isShowVideo:Z

    return p0
.end method

.method static synthetic access$802(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;Z)Z
    .registers 2

    .line 77
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->isShowVideo:Z

    return p1
.end method

.method static synthetic access$900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Landroid/widget/ImageView;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->activity_patrol_videoView_bg:Landroid/widget/ImageView;

    return-object p0
.end method

.method private cancelNav()V
    .registers 6

    .line 754
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_CANCEL:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 755
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_17

    .line 756
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_17
    return-void
.end method

.method private checkDownloadProgress()V
    .registers 4

    .line 391
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$7;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$7;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private checkStauts()V
    .registers 6

    .line 345
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    const-wide/16 v3, 0x9c4

    invoke-static {v1, v2, v3, v4, v0}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$6;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$6;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private checkWiFiDirect()V
    .registers 6

    .line 537
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object v0

    sget-object v1, Lcom/pilotlab/rollereye/Bean/ConnectMode;->WIFIDIRECT:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne v0, v1, :cond_39

    .line 539
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEVICE_SN:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 540
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_13
    const-string v2, "userID"

    .line 542
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Global;->getUser_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception v2

    .line 544
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 546
    :goto_25
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v2, :cond_39

    .line 547
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v3, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v4, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_39
    return-void
.end method

.method private deleteSchedule(I)V
    .registers 9

    const v0, 0x7f11033d

    .line 223
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f110071

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$3;

    invoke-direct {v4, p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;I)V

    const p1, 0x7f11003a

    .line 244
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$4;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$4;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)V

    move-object v1, p0

    .line 223
    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 249
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void
.end method

.method private initHandler()V
    .registers 2

    .line 253
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$5;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$5;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method private initSwipeRecycleView()V
    .registers 4

    const v0, 0x7f0a0125

    .line 169
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->activity_patrol_path_rv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    .line 171
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$1;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)V

    .line 187
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->activity_patrol_path_rv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {v1, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setSwipeMenuCreator(Lcom/yanzhenjie/recyclerview/SwipeMenuCreator;)V

    .line 189
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$2;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)V

    .line 205
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->activity_patrol_path_rv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {v1, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setOnItemMenuClickListener(Lcom/yanzhenjie/recyclerview/OnItemMenuClickListener;)V

    .line 208
    new-instance v0, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->route_list:Ljava/util/List;

    invoke-direct {v0, p0, v1, p0}, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$onItemCallback;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->routeAdapter:Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;

    .line 209
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->activity_patrol_path_rv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 210
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->activity_patrol_path_rv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 211
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->activity_patrol_path_rv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DividerItemDecoration;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 213
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->activity_patrol_path_rv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->routeAdapter:Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private newRoute()V
    .registers 10

    .line 554
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 555
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    if-eqz v0, :cond_aa

    .line 556
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getBattary()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;->getCharging()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f11003e

    if-ne v0, v1, :cond_90

    .line 557
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    .line 558
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 559
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f110348

    .line 560
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    const/high16 v1, 0x41200000    # 10.0f

    .line 561
    invoke-static {p0, v1}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v1}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v1}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v1}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 562
    new-instance v1, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f11003b

    .line 563
    invoke-virtual {p0, v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 564
    invoke-virtual {v1, v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 565
    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$8;

    invoke-direct {v3, p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$8;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const v2, 0x7f110007

    .line 593
    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$9;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$9;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 599
    invoke-virtual {v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->editDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 600
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->editDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    new-instance v2, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$10;

    invoke-direct {v2, p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$10;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 614
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->editDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_aa

    :cond_90
    const v0, 0x7f11033f

    .line 616
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$11;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$11;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    .line 621
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :cond_aa
    :goto_aa
    return-void
.end method

.method private queryWayPointList()V
    .registers 6

    .line 421
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_LIST:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 422
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_17

    .line 423
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_17
    return-void
.end method

.method private reCheckStatus()V
    .registers 2

    .line 740
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->myWiFiDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_c

    .line 741
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->myWiFiDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 742
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->getConnectStatus()V

    .line 744
    :cond_c
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->myCheckeStatusDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_16

    .line 745
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 746
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->checkStauts()V

    :cond_16
    return-void
.end method

.method private scanLocalFile(Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;)V
    .registers 8

    .line 723
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getInstance()Lcom/pilotlab/rollereye/Controller/FilePathController;

    move-result-object v1

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getDocumentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 725
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_57

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_57

    .line 726
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_26
    if-ge v2, v1, :cond_57

    aget-object v3, v0, v2

    .line 727
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_54

    .line 728
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 729
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_4f

    const/4 v0, 0x1

    .line 730
    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setType(I)V

    goto :goto_57

    :cond_4f
    const/4 v0, 0x2

    .line 731
    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setType(I)V

    goto :goto_57

    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_57
    :goto_57
    return-void
.end method

.method private startCamera()V
    .registers 5

    .line 431
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_12

    .line 432
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->IOTYPE_USER_IPCAM_START:I

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_12
    return-void
.end method

.method private startNav(I)V
    .registers 6

    .line 799
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_PATROL:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 800
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    const-string v2, "path"

    .line 802
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->route_list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/WayPointBean;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/WayPointBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception p1

    .line 804
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 806
    :goto_1d
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz p1, :cond_31

    .line 807
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_31
    return-void
.end method

.method private stopCamera()V
    .registers 5

    .line 440
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_12

    .line 441
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->IOTYPE_USER_IPCAM_STOP:I

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_12
    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 447
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->Event(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;)V

    .line 448
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;->getMessage()Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->getTag()I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_10

    goto :goto_42

    .line 450
    :cond_10
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object v0

    sget-object v1, Lcom/pilotlab/rollereye/Bean/ConnectMode;->WIFIDIRECT:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne v0, v1, :cond_23

    .line 451
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->checkWiFiDirect()V

    .line 452
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->queryWayPointList()V

    goto :goto_42

    .line 454
    :cond_23
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;->getMessage()Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->getBody()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;->getMessage()Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getDefaultP2PClient(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 455
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->queryWayPointList()V

    :cond_42
    :goto_42
    return-void
.end method

.method public Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    .registers 9
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 629
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 630
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getType()I

    move-result v0

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    if-ne v0, v1, :cond_1a8

    .line 632
    :try_start_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    .line 633
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 634
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_23} :catch_1a4

    const/16 v1, 0x138d

    const-string v2, "status"

    const-string v3, "body"

    if-ne p1, v1, :cond_12f

    .line 636
    :try_start_2b
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 638
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1a8

    .line 639
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->route_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "paths"

    .line 640
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 641
    :goto_4b
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_6d

    .line 642
    new-instance v3, Lcom/pilotlab/rollereye/Bean/WayPointBean;

    invoke-direct {v3}, Lcom/pilotlab/rollereye/Bean/WayPointBean;-><init>()V

    const-string v4, ""

    .line 643
    invoke-virtual {v3, v4}, Lcom/pilotlab/rollereye/Bean/WayPointBean;->setCreateTime(Ljava/lang/String;)V

    .line 644
    invoke-virtual {v3, v2}, Lcom/pilotlab/rollereye/Bean/WayPointBean;->setId(I)V

    .line 645
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pilotlab/rollereye/Bean/WayPointBean;->setName(Ljava/lang/String;)V

    .line 646
    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->route_list:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    :cond_6d
    const-string v0, "pathlist"

    .line 649
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_112

    move v0, v1

    .line 651
    :goto_76
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_112

    .line 652
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 653
    new-instance v3, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-direct {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;-><init>()V

    const-string v4, "size"

    .line 654
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setFileSize(J)V

    const-string v4, "name"

    .line 655
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setFileName(Ljava/lang/String;)V

    .line 656
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Global;->getDownloadSession()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setSession(I)V

    const-string v4, "create_time"

    .line 657
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setCreateTime(Ljava/lang/String;)V

    const-string v4, "path"

    .line 658
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setRemote_path(Ljava/lang/String;)V

    .line 659
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getInstance()Lcom/pilotlab/rollereye/Controller/FilePathController;

    move-result-object v4

    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v5}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getDocumentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setLocal_path(Ljava/lang/String;)V

    .line 660
    invoke-direct {p0, v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->scanLocalFile(Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;)V

    .line 662
    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getDownload_status()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_10e

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getType()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_ef

    goto :goto_10e

    .line 664
    :cond_ef
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PdownloadList:Ljava/util/List;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10e

    .line 665
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v2, :cond_10e

    .line 666
    new-instance v2, Lcom/pilotlab/rollereye/P2P/P2PDownload;

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-direct {v2, v3, v4}, Lcom/pilotlab/rollereye/P2P/P2PDownload;-><init>(Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;Lcom/pilotlab/rollereye/P2P/P2PClient;)V

    .line 667
    invoke-virtual {v2}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->downloadBegin()V

    .line 668
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PdownloadList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10e
    :goto_10e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_76

    .line 676
    :cond_112
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->routeAdapter:Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->updateUI()V

    .line 677
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->route_list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_128

    .line 678
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->activity_patrol_empty_ry:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1a8

    .line 679
    :cond_128
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->activity_patrol_empty_ry:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1a8

    :cond_12f
    const/16 v1, 0x138e

    if-ne p1, v1, :cond_15a

    .line 682
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 683
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_141

    .line 685
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->reCheckStatus()V

    goto :goto_1a8

    .line 686
    :cond_141
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1a8

    .line 687
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->activity_patrol_schedule_ly:Landroid/widget/RelativeLayout;

    const v0, 0x7f110340

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_1a8

    :cond_15a
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_1a8

    .line 690
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "init"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a8

    .line 693
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->checkDefaultWiFiDirectDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    if-eqz p1, :cond_177

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->checkDefaultWiFiDirectDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_177

    return-void

    :cond_177
    const p1, 0x7f11034c

    .line 696
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f11003e

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$12;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$12;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)V

    const p1, 0x7f110007

    .line 704
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$13;

    invoke-direct {v5, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$13;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)V

    const/4 v6, 0x0

    move-object v0, p0

    .line 696
    invoke-virtual/range {v0 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->checkDefaultWiFiDirectDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 710
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->checkDefaultWiFiDirectDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V
    :try_end_1a3
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_1a3} :catch_1a4

    goto :goto_1a8

    :catch_1a4
    move-exception p1

    .line 714
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1a8
    :goto_1a8
    return-void
.end method

.method public Event(Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;)V
    .registers 16
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->POSTING:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x0

    .line 285
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->countCameraStatus:I

    .line 287
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    if-nez v1, :cond_8

    return-void

    .line 290
    :cond_8
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getPar3()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 291
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getIndex()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->index_iframe:J

    goto :goto_1c

    .line 293
    :cond_16
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getIndex()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->index_bframe:J

    .line 295
    :goto_1c
    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getData()[B

    move-result-object v6

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getData_length()I

    move-result v7

    iget-object v8, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->y:[B

    iget-object v9, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->y_len:[I

    iget-object v10, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->u:[B

    iget-object v11, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->u_len:[I

    iget-object v12, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->v:[B

    iget-object v13, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->v_len:[I

    invoke-virtual/range {v5 .. v13}, Lcom/pilotlab/ffmpeg/ffmpeg;->Decode([BI[B[I[B[I[B[I)I

    move-result v1

    const/4 v3, -0x2

    if-ne v1, v3, :cond_57

    .line 298
    new-array p1, v2, [I

    .line 299
    new-array v1, v2, [I

    .line 300
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    invoke-virtual {v3, p1, v1}, Lcom/pilotlab/ffmpeg/ffmpeg;->Rest([I[I)I

    .line 301
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 302
    iput v2, v3, Landroid/os/Message;->what:I

    .line 303
    aget p1, p1, v0

    iput p1, v3, Landroid/os/Message;->arg1:I

    .line 304
    aget p1, v1, v0

    iput p1, v3, Landroid/os/Message;->arg2:I

    .line 305
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->myHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9d

    :cond_57
    if-ltz v1, :cond_9d

    .line 309
    iget-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->index_iframe:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_97

    iget-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->index_bframe:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_97

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getPar3()I

    move-result v0

    if-eq v0, v2, :cond_97

    iget-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->index_bframe:J

    iget-wide v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->index_iframe:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1e

    cmp-long v0, v0, v2

    if-lez v0, :cond_97

    .line 310
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop frame:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getIndex()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 314
    :cond_97
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->myHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9d
    :goto_9d
    return-void
.end method

.method protected initEvent()V
    .registers 2

    .line 137
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initEvent()V

    .line 138
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->activity_patrol_new_route:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->activity_patrol_enlarge:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->activity_patrol_schedule_ly:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView()V
    .registers 3

    .line 145
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initView()V

    const v0, 0x7f0a0448

    .line 146
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0210

    .line 147
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->center_title:Landroid/widget/TextView;

    .line 148
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->center_title:Landroid/widget/TextView;

    const v1, 0x7f110045

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 149
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->center_title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a0127

    .line 151
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->activity_patrol_schedule_ly:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a012a

    .line 152
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->activity_patrol_videoView:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0128

    .line 153
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->activity_patrol_surface_view:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    const v0, 0x7f0a0123

    .line 154
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->activity_patrol_enlarge:Landroid/widget/ImageButton;

    const v0, 0x7f0a0124

    .line 155
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->activity_patrol_new_route:Landroid/widget/Button;

    const v0, 0x7f0a012b

    .line 156
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->activity_patrol_videoView_bg:Landroid/widget/ImageView;

    .line 157
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    const v1, 0x7f0801a4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->activity_patrol_videoView_bg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    const v0, 0x7f0a0122

    .line 158
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->activity_patrol_empty_ry:Landroid/widget/RelativeLayout;

    .line 159
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->initSwipeRecycleView()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 516
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 517
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_28

    goto :goto_26

    .line 520
    :sswitch_d
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->finish()V

    goto :goto_26

    .line 530
    :sswitch_11
    const-class p1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 531
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_26

    .line 527
    :sswitch_1a
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->newRoute()V

    goto :goto_26

    .line 523
    :sswitch_1e
    const-class p1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 524
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->startActivity(Landroid/content/Intent;)V

    :goto_26
    return-void

    nop

    :sswitch_data_28
    .sparse-switch
        0x7f0a0123 -> :sswitch_1e
        0x7f0a0124 -> :sswitch_1a
        0x7f0a0127 -> :sswitch_11
        0x7f0a0448 -> :sswitch_d
    .end sparse-switch
.end method

.method protected onDestroy()V
    .registers 2

    .line 506
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onDestroy()V

    .line 507
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->editDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    if-eqz v0, :cond_a

    .line 508
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->dismiss()V

    .line 509
    :cond_a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->checkDownloadDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_11

    .line 510
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_11
    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 10

    .line 763
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->routeAdapter:Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->getPatrolName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->route_list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/WayPointBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/WayPointBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v0, 0x7f11003e

    if-eqz p1, :cond_40

    const p1, 0x7f11033c

    .line 764
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$14;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$14;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)V

    const p1, 0x7f110007

    .line 770
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$15;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$15;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)V

    move-object v1, p0

    .line 764
    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 775
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_81

    .line 777
    :cond_40
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    if-eqz p1, :cond_81

    .line 778
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getBattary()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;->getCharging()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_67

    .line 779
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->routeAdapter:Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->getPatrolName()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_81

    .line 780
    invoke-direct {p0, p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->startNav(I)V

    goto :goto_81

    :cond_67
    const p1, 0x7f110341

    .line 782
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$16;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$16;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 787
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :cond_81
    :goto_81
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)V
    .registers 3

    .line 795
    invoke-direct {p0, p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->deleteSchedule(I)V

    return-void
.end method

.method protected onPause()V
    .registers 3

    .line 485
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onPause()V

    .line 486
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 487
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 489
    :cond_14
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->myCheckeStatusDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1b

    .line 490
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 492
    :cond_1b
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->checkDefaultWiFiDirectDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    if-eqz v0, :cond_22

    .line 493
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->dismiss()V

    .line 494
    :cond_22
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->stopCamera()V

    .line 495
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    invoke-virtual {v0}, Lcom/pilotlab/ffmpeg/ffmpeg;->DecoderRelease()I

    const/4 v0, 0x0

    .line 496
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    .line 497
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PdownloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4c

    const/4 v0, 0x0

    .line 498
    :goto_36
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PdownloadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4c

    .line 499
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PdownloadList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/P2P/P2PDownload;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->downloadEnd()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_4c
    return-void
.end method

.method protected onResume()V
    .registers 4

    .line 465
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onResume()V

    .line 466
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 467
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 469
    :cond_14
    new-instance v0, Lcom/pilotlab/ffmpeg/ffmpeg;

    invoke-direct {v0}, Lcom/pilotlab/ffmpeg/ffmpeg;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    .line 470
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->w:I

    iget v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->h:I

    invoke-virtual {v0, v1, v2}, Lcom/pilotlab/ffmpeg/ffmpeg;->DecoderInit(II)I

    .line 471
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->startCamera()V

    .line 472
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->checkStauts()V

    .line 473
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->queryWayPointList()V

    .line 474
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_45

    :cond_3d
    const/4 v0, 0x0

    .line 475
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->isShowVideo:Z

    .line 476
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->activity_patrol_videoView_bg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 479
    :cond_45
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->checkWiFiDirect()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d003c

    .line 126
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 2

    .line 164
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->setUpData(Landroid/os/Bundle;)V

    .line 165
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->checkDownloadProgress()V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 131
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->initView()V

    .line 132
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->initEvent()V

    .line 133
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->initHandler()V

    return-void
.end method
