.class public Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$onItemCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$VideoThread;,
        Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$AudioThread;
    }
.end annotation


# instance fields
.field private MIN:I

.field private NORMAL:I

.field private TAG:Ljava/lang/String;

.field private activity_camera_bac_btn:Landroid/widget/ImageButton;

.field private activity_camera_bac_home_tips:Landroid/widget/TextView;

.field private activity_camera_bitRate_ry:Landroid/widget/RelativeLayout;

.field private activity_camera_blackCover:Landroid/view/View;

.field private activity_camera_detect_btn:Landroid/widget/Button;

.field private activity_camera_favorite_btn:Landroid/widget/Button;

.field private activity_camera_go_home_btn:Landroid/widget/Button;

.field private activity_camera_mic_btn:Landroid/widget/Button;

.field private activity_camera_out_btn:Landroid/widget/Button;

.field private activity_camera_rec_img:Landroid/widget/ImageView;

.field private activity_camera_rec_ly:Landroid/widget/LinearLayout;

.field private activity_camera_record_btn:Landroid/widget/Button;

.field private activity_camera_scaleview_ry:Landroid/widget/RelativeLayout;

.field private activity_camera_scaleview_scaleview:Lcom/pilotlab/rollereye/CustomerView/ScaleView;

.field private activity_camera_scan_layout:Landroid/widget/RelativeLayout;

.field private activity_camera_scanview:Lcom/pilotlab/rollereye/CustomerView/ScanView;

.field private activity_camera_setting_btn:Landroid/widget/ImageButton;

.field private activity_camera_speaker_btn:Landroid/widget/Button;

.field private activity_camera_takephoto_btn:Landroid/widget/Button;

.field private activity_camera_tv_bitRate:Landroid/widget/TextView;

.field private activity_camera_waypoint_btn:Landroid/widget/Button;

.field private activity_camera_waypoint_layout:Landroid/widget/RelativeLayout;

.field private activity_camera_waypoint_rv:Landroidx/recyclerview/widget/RecyclerView;

.field private activity_camera_waypoint_stop_btn:Landroid/widget/Button;

.field private activity_camera_waypoint_tips:Landroid/widget/TextView;

.field private activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

.field private activity_camera_waypoint_view_close:Landroid/widget/ImageButton;

.field private activity_camera_waypoint_view_layout:Landroid/widget/RelativeLayout;

.field private activity_camera_waypoint_view_open:Landroid/widget/ImageButton;

.field private activity_camera_waypoint_view_text:Landroid/widget/TextView;

.field private audioData_Queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/pilotlab/rollereye/Bean/AudioFrameMessage;",
            ">;"
        }
    .end annotation
.end field

.field private audioDecoder:Lcom/pilotlab/ffmpeg/AudioDecoder;

.field private audioFramePlay:Ljava/lang/Thread;

.field public audioNeedBuffer:Z

.field private audioTimeStamp:J

.field private begin2CheckFrame:Z

.field private bitRateDisposable:Lio/reactivex/disposables/Disposable;

.field private checkDefaultWiFiDirectDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

.field private checkDownloadDisposable:Lio/reactivex/disposables/Disposable;

.field private checkVideoDispose:Lio/reactivex/disposables/Disposable;

.field private countCameraStatus:I

.field private defaultFrames:I

.field private doubleTouch:Z

.field private editDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

.field private frame_height:I

.field private frame_width:I

.field private h:I

.field index_bframe:J

.field index_iframe:J

.field private isExit:Z

.field private isPlaying:Z

.field private joystick_container:Landroid/widget/RelativeLayout;

.field private leftControlDisposable:Lio/reactivex/disposables/Disposable;

.field private leftLastTime:J

.field private mDefaultController:Lcom/pilotlab/rollereye/Controller/DefaultController;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private myAudioRecord:Lcom/pilotlab/ffmpeg/MyAudioRecord;

.field private myBitRate:F

.field private myCheckeStatusDisposable:Lio/reactivex/disposables/Disposable;

.field private myControlCommandDispose:Lio/reactivex/disposables/Disposable;

.field private myHandler:Landroid/os/Handler;

.field private myWayPointDispose:Lio/reactivex/disposables/Disposable;

.field private nLenStart:D

.field private nav_estimate:I

.field private nav_status:I

.field private nav_stop:I

.field private oldDist:F

.field private outputStream:Ljava/io/FileOutputStream;

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

.field private pre_x:F

.field private press_flag:Z

.field private receiveFrameCount:J

.field private rightControlDisposable:Lio/reactivex/disposables/Disposable;

.field private rightLasTime:J

.field private singleTouch:Z

.field private stop_counter:I

.field private surfaceView:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

.field private touchMode:I

.field private touchX:F

.field private touchY:F

.field private u:[B

.field private u_len:[I

.field private v:[B

.field private v_len:[I

.field private v_speed_1:D

.field private v_speed_2:D

.field private videoData_Queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;",
            ">;"
        }
    .end annotation
.end field

.field private videoFramePlay:Ljava/lang/Thread;

.field private videoNeedBuffer:Z

.field private videoTimeStamp:J

.field private w:I

.field private w_speed:D

.field private wayPointListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;

.field private wayPoint_data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/WayPointBean;",
            ">;"
        }
    .end annotation
.end field

.field private y:[B

.field private y_len:[I


# direct methods
.method public constructor <init>()V
    .registers 8

    .line 109
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;-><init>()V

    const-string v0, "CameraActivity"

    .line 111
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->TAG:Ljava/lang/String;

    const/16 v0, 0x800

    .line 117
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->w:I

    const/16 v0, 0x47e

    .line 118
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->h:I

    .line 119
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->w:I

    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->h:I

    mul-int v2, v0, v1

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->y:[B

    mul-int v2, v0, v1

    .line 120
    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->u:[B

    mul-int/2addr v0, v1

    .line 121
    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->v:[B

    const/4 v0, 0x1

    .line 123
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->y_len:[I

    .line 124
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->u_len:[I

    .line 125
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->v_len:[I

    const/4 v1, 0x0

    .line 127
    iput v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->frame_width:I

    .line 128
    iput v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->frame_height:I

    const-wide/16 v2, 0x0

    .line 130
    iput-wide v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->receiveFrameCount:J

    .line 131
    iput-boolean v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->begin2CheckFrame:Z

    const/16 v4, 0x1e

    .line 133
    iput v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->defaultFrames:I

    .line 136
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->videoData_Queue:Ljava/util/Queue;

    .line 138
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->audioData_Queue:Ljava/util/Queue;

    .line 140
    iput-boolean v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->isExit:Z

    const/4 v4, 0x2

    .line 141
    iput v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->NORMAL:I

    .line 142
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->MIN:I

    .line 144
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->audioNeedBuffer:Z

    .line 145
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->videoNeedBuffer:Z

    .line 181
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->wayPoint_data:Ljava/util/List;

    .line 182
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PdownloadList:Ljava/util/List;

    .line 201
    iput v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->countCameraStatus:I

    const-wide/16 v4, 0x0

    .line 204
    iput-wide v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->v_speed_1:D

    .line 205
    iput-wide v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->v_speed_2:D

    .line 206
    iput-wide v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->w_speed:D

    .line 208
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->stop_counter:I

    const/4 v6, -0x1

    .line 211
    iput v6, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->nav_status:I

    .line 212
    iput v6, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->nav_stop:I

    .line 213
    iput v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->nav_estimate:I

    .line 215
    iput v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->touchMode:I

    .line 218
    iput-wide v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->nLenStart:D

    .line 219
    iput-boolean v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->doubleTouch:Z

    .line 220
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->singleTouch:Z

    .line 226
    iput-wide v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->index_iframe:J

    .line 227
    iput-wide v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->index_bframe:J

    .line 230
    iput-boolean v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->isPlaying:Z

    const/4 v0, 0x0

    .line 235
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myBitRate:F

    return-void
.end method

.method private ScaleViewPort(II)V
    .registers 10

    .line 1616
    invoke-static {p0}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->getTruelyWidthPx(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->mScreenWidth:I

    .line 1617
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScreenWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->mScreenWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->mScreenWidth:I

    int-to-double v0, v0

    int-to-double v2, p1

    div-double/2addr v0, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    int-to-double v3, p2

    mul-double/2addr v3, v0

    double-to-int v3, v3

    .line 1622
    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->surfaceView:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    invoke-virtual {v4, p1, p2}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->updateRenderWidthHeight(II)V

    const v4, 0x7f0a055a

    .line 1623
    invoke-virtual {p0, v4}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 1624
    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1625
    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1626
    invoke-virtual {p0, v4}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1628
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->frame_width:I

    .line 1629
    iput p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->frame_height:I

    .line 1631
    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->TAG:Ljava/lang/String;

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

    .line 1632
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scale:"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->TAG:Ljava/lang/String;

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

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;II)V
    .registers 3

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->ScaleViewPort(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)[B
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->y:[B

    return-object p0
.end method

.method static synthetic access$1000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)D
    .registers 3

    .line 109
    iget-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->v_speed_2:D

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;D)D
    .registers 3

    .line 109
    iput-wide p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->v_speed_2:D

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Ljava/lang/String;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lio/reactivex/disposables/Disposable;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->leftControlDisposable:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->leftControlDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)J
    .registers 3

    .line 109
    iget-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->leftLastTime:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;J)J
    .registers 3

    .line 109
    iput-wide p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->leftLastTime:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)D
    .registers 3

    .line 109
    iget-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->w_speed:D

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;D)D
    .registers 3

    .line 109
    iput-wide p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->w_speed:D

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lio/reactivex/disposables/Disposable;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->rightControlDisposable:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->rightControlDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)J
    .registers 3

    .line 109
    iget-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->rightLasTime:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;J)J
    .registers 3

    .line 109
    iput-wide p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->rightLasTime:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)F
    .registers 1

    .line 109
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->touchX:F

    return p0
.end method

.method static synthetic access$1702(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;F)F
    .registers 2

    .line 109
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->touchX:F

    return p1
.end method

.method static synthetic access$1800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)F
    .registers 1

    .line 109
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->touchY:F

    return p0
.end method

.method static synthetic access$1802(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;F)F
    .registers 2

    .line 109
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->touchY:F

    return p1
.end method

.method static synthetic access$1900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)I
    .registers 1

    .line 109
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->touchMode:I

    return p0
.end method

.method static synthetic access$1902(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;I)I
    .registers 2

    .line 109
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->touchMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)[I
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->y_len:[I

    return-object p0
.end method

.method static synthetic access$2000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)F
    .registers 1

    .line 109
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->oldDist:F

    return p0
.end method

.method static synthetic access$2002(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;F)F
    .registers 2

    .line 109
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->oldDist:F

    return p1
.end method

.method static synthetic access$2100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;Landroid/view/MotionEvent;)F
    .registers 2

    .line 109
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->spacing(Landroid/view/MotionEvent;)F

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;F)V
    .registers 2

    .line 109
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->zoom(F)V

    return-void
.end method

.method static synthetic access$2300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/rollereye/CustomerView/WayPointView;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myControlCommandDispose:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)I
    .registers 1

    .line 109
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->stop_counter:I

    return p0
.end method

.method static synthetic access$2702(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;I)I
    .registers 2

    .line 109
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->stop_counter:I

    return p1
.end method

.method static synthetic access$2708(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)I
    .registers 3

    .line 109
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->stop_counter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->stop_counter:I

    return v0
.end method

.method static synthetic access$2800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myWayPointDispose:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)[B
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->u:[B

    return-object p0
.end method

.method static synthetic access$3000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$3202(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->checkVideoDispose:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Z
    .registers 1

    .line 109
    iget-boolean p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->begin2CheckFrame:Z

    return p0
.end method

.method static synthetic access$3400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)I
    .registers 1

    .line 109
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->defaultFrames:I

    return p0
.end method

.method static synthetic access$3500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)J
    .registers 3

    .line 109
    iget-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->receiveFrameCount:J

    return-wide v0
.end method

.method static synthetic access$3502(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;J)J
    .registers 3

    .line 109
    iput-wide p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->receiveFrameCount:J

    return-wide p1
.end method

.method static synthetic access$3600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)I
    .registers 1

    .line 109
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->frame_width:I

    return p0
.end method

.method static synthetic access$3700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)I
    .registers 1

    .line 109
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->frame_height:I

    return p0
.end method

.method static synthetic access$3800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;II)V
    .registers 3

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->reduceResolution(II)V

    return-void
.end method

.method static synthetic access$3900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)[I
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->u_len:[I

    return-object p0
.end method

.method static synthetic access$4000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$4202(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myCheckeStatusDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;Z)V
    .registers 2

    .line 109
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->enableStatusButton(Z)V

    return-void
.end method

.method static synthetic access$4600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Landroid/widget/Button;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_mic_btn:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$4702(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->checkDownloadDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Ljava/util/List;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PdownloadList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4902(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->bitRateDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)[B
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->v:[B

    return-object p0
.end method

.method static synthetic access$5000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)F
    .registers 1

    .line 109
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myBitRate:F

    return p0
.end method

.method static synthetic access$5002(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;F)F
    .registers 2

    .line 109
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myBitRate:F

    return p1
.end method

.method static synthetic access$5100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Landroid/widget/TextView;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_tv_bitRate:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V
    .registers 1

    .line 109
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->cancelNav()V

    return-void
.end method

.method static synthetic access$5300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Landroid/view/View;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_blackCover:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Landroid/widget/Button;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_takephoto_btn:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;Ljava/lang/String;)V
    .registers 2

    .line 109
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->startNav(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V
    .registers 1

    .line 109
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->goOutCharge()V

    return-void
.end method

.method static synthetic access$5700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Ljava/util/List;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->wayPoint_data:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)[I
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->v_len:[I

    return-object p0
.end method

.method static synthetic access$6000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->wayPointListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V
    .registers 1

    .line 109
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->saveWayPoint()V

    return-void
.end method

.method static synthetic access$6500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Z
    .registers 1

    .line 109
    iget-boolean p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->isExit:Z

    return p0
.end method

.method static synthetic access$6600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Z
    .registers 1

    .line 109
    iget-boolean p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->isPlaying:Z

    return p0
.end method

.method static synthetic access$6700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Ljava/util/Queue;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->audioData_Queue:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)I
    .registers 1

    .line 109
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->NORMAL:I

    return p0
.end method

.method static synthetic access$6900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)I
    .registers 1

    .line 109
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->MIN:I

    return p0
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->surfaceView:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    return-object p0
.end method

.method static synthetic access$7000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)J
    .registers 3

    .line 109
    iget-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->audioTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$7002(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;J)J
    .registers 3

    .line 109
    iput-wide p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->audioTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$7100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/ffmpeg/AudioDecoder;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->audioDecoder:Lcom/pilotlab/ffmpeg/AudioDecoder;

    return-object p0
.end method

.method static synthetic access$7200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)J
    .registers 3

    .line 109
    iget-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->videoTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$7202(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;J)J
    .registers 3

    .line 109
    iput-wide p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->videoTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$7300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Z
    .registers 1

    .line 109
    iget-boolean p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->videoNeedBuffer:Z

    return p0
.end method

.method static synthetic access$7302(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;Z)Z
    .registers 2

    .line 109
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->videoNeedBuffer:Z

    return p1
.end method

.method static synthetic access$7400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Ljava/util/Queue;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->videoData_Queue:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$7500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/ffmpeg/ffmpeg;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    return-object p0
.end method

.method static synthetic access$7600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Landroid/os/Handler;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Landroid/widget/TextView;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_tips:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)D
    .registers 3

    .line 109
    iget-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->v_speed_1:D

    return-wide v0
.end method

.method static synthetic access$902(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;D)D
    .registers 3

    .line 109
    iput-wide p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->v_speed_1:D

    return-wide p1
.end method

.method private cancelDialogNav()V
    .registers 8

    const v0, 0x7f11033c

    .line 1802
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f11003e

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$20;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$20;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V

    const v0, 0x7f110007

    .line 1808
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$21;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$21;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V

    move-object v1, p0

    .line 1802
    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    .line 1813
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void
.end method

.method private cancelNav()V
    .registers 6

    .line 2100
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_CANCEL:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 2101
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_17

    .line 2102
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

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

    .line 1489
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

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$18;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$18;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private checkShowBaseLine()V
    .registers 3

    .line 1095
    invoke-static {p0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getShowBaseLine(Landroid/content/Context;)Z

    move-result v0

    .line 1096
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_scaleview_ry:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_c

    :cond_a
    const/16 v0, 0x8

    :goto_c
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1097
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_scaleview_scaleview:Lcom/pilotlab/rollereye/CustomerView/ScaleView;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/ScaleView;->invalidate()V

    return-void
.end method

.method private checkShowBitRate()V
    .registers 3

    .line 1090
    invoke-static {p0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getShowBitRate(Landroid/content/Context;)Z

    move-result v0

    .line 1091
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_bitRate_ry:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_c

    :cond_a
    const/16 v0, 0x8

    :goto_c
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private checkStauts()V
    .registers 6

    .line 1136
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x12c

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

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$11;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$11;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private checkVideoAutoAdjust(I)V
    .registers 5

    .line 1045
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->checkVideoDispose:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_7

    .line 1046
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_7
    const/4 v0, 0x0

    .line 1049
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->begin2CheckFrame:Z

    const-wide/16 v0, 0x0

    .line 1051
    iput-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->receiveFrameCount:J

    int-to-long v0, p1

    .line 1053
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v0, v1, v2}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$8;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private checkWiFiDirect()V
    .registers 6

    .line 1029
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object v0

    sget-object v1, Lcom/pilotlab/rollereye/Bean/ConnectMode;->WIFIDIRECT:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne v0, v1, :cond_39

    .line 1030
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEVICE_SN:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 1031
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_13
    const-string v2, "userID"

    .line 1033
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

    .line 1035
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1037
    :goto_25
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v2, :cond_39

    .line 1038
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v3, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v4, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_39
    return-void
.end method

.method private closeSlamView()V
    .registers 4

    .line 2156
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myWayPointDispose:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_7

    .line 2157
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2159
    :cond_7
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_42

    .line 2160
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_stop_btn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2161
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_favorite_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2162
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_btn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2163
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2e

    .line 2164
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->setVisibility(I)V

    .line 2165
    :cond_2e
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2166
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view_close:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2167
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view_open:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2168
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->clear()V

    :cond_42
    return-void
.end method

.method private closeWayPointMenu()V
    .registers 4

    .line 1862
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_btn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 1863
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_detect_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1864
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_mic_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1865
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_speaker_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1866
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_record_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1867
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_takephoto_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1868
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_layout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1869
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->wayPointListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->setEdit(Z)V

    return-void
.end method

.method private closeWayPointView()V
    .registers 4

    .line 1851
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->setVisibility(I)V

    .line 1852
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view_open:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1853
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view_close:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1854
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->resetScaleTranslate()V

    return-void
.end method

.method private dialogChoice(Ljava/util/List;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2199
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110250

    .line 2200
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const v1, 0x7f0d0082

    const/4 v2, 0x0

    .line 2201
    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a027c

    .line 2202
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 2203
    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    .line 2204
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2205
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_3b

    .line 2206
    invoke-static {p0}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->getTruelyHeightPx(Landroid/content/Context;)I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2207
    :cond_3b
    new-instance v3, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;

    invoke-direct {v3, p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 2208
    invoke-virtual {v3}, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;->getmSeleted()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2209
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2210
    new-instance p2, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$33;

    invoke-direct {p2, p0, v3, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$33;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;Ljava/util/List;)V

    invoke-virtual {v2, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2218
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const p1, 0x7f11003e

    .line 2219
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$34;

    invoke-direct {p2, p0, v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$34;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;)V

    invoke-virtual {v0, p1, p2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const p1, 0x7f110007

    .line 2231
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$35;

    invoke-direct {p2, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$35;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V

    invoke-virtual {v0, p1, p2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 2237
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void
.end method

.method private enableStatusButton(Z)V
    .registers 3

    .line 806
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_takephoto_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 807
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_record_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 808
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_mic_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 810
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_detect_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 811
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 812
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_speaker_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    if-nez p1, :cond_2a

    .line 814
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_out_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 815
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_go_home_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2a
    return-void
.end method

.method private goBackCharge()V
    .registers 6

    .line 1825
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_BACK:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 1826
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_17

    .line 1827
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

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

.method private goOutCharge()V
    .registers 6

    .line 1817
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_OUT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 1818
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_17

    .line 1819
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

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

.method private initAudioPermission()V
    .registers 3

    .line 1170
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const/4 v1, 0x1

    .line 1171
    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->setLogging(Z)V

    const-string v1, "android.permission.RECORD_AUDIO"

    .line 1172
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->request([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$12;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$12;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V

    .line 1173
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private initBitRate()V
    .registers 4

    .line 1638
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$19;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$19;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private initControlCommand()V
    .registers 4

    .line 660
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xfa

    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$5;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$5;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private initFirstGuide()V
    .registers 7

    .line 752
    new-instance v0, Lcom/app/hubert/guide/model/HighlightOptions$Builder;

    invoke-direct {v0}, Lcom/app/hubert/guide/model/HighlightOptions$Builder;-><init>()V

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$7;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$7;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V

    .line 753
    invoke-virtual {v0, v1}, Lcom/app/hubert/guide/model/HighlightOptions$Builder;->setOnHighlightDrewListener(Lcom/app/hubert/guide/listener/OnHighlightDrewListener;)Lcom/app/hubert/guide/model/HighlightOptions$Builder;

    move-result-object v0

    .line 764
    invoke-virtual {v0}, Lcom/app/hubert/guide/model/HighlightOptions$Builder;->build()Lcom/app/hubert/guide/model/HighlightOptions;

    move-result-object v0

    .line 765
    invoke-static {p0}, Lcom/app/hubert/guide/NewbieGuide;->with(Landroid/app/Activity;)Lcom/app/hubert/guide/core/Builder;

    move-result-object v1

    const-string v2, "Camera"

    .line 766
    invoke-virtual {v1, v2}, Lcom/app/hubert/guide/core/Builder;->setLabel(Ljava/lang/String;)Lcom/app/hubert/guide/core/Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 767
    invoke-virtual {v1, v2}, Lcom/app/hubert/guide/core/Builder;->alwaysShow(Z)Lcom/app/hubert/guide/core/Builder;

    move-result-object v1

    .line 768
    invoke-static {}, Lcom/app/hubert/guide/model/GuidePage;->newInstance()Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_out_btn:Landroid/widget/Button;

    sget-object v5, Lcom/app/hubert/guide/model/HighLight$Shape;->CIRCLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    .line 769
    invoke-virtual {v3, v4, v5, v0}, Lcom/app/hubert/guide/model/GuidePage;->addHighLightWithOptions(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;Lcom/app/hubert/guide/model/HighlightOptions;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    new-array v4, v2, [I

    const v5, 0x7f0d0141

    invoke-virtual {v3, v5, v4}, Lcom/app/hubert/guide/model/GuidePage;->setLayoutRes(I[I)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    .line 768
    invoke-virtual {v1, v3}, Lcom/app/hubert/guide/core/Builder;->addGuidePage(Lcom/app/hubert/guide/model/GuidePage;)Lcom/app/hubert/guide/core/Builder;

    move-result-object v1

    .line 770
    invoke-static {}, Lcom/app/hubert/guide/model/GuidePage;->newInstance()Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_go_home_btn:Landroid/widget/Button;

    sget-object v5, Lcom/app/hubert/guide/model/HighLight$Shape;->CIRCLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    .line 771
    invoke-virtual {v3, v4, v5, v0}, Lcom/app/hubert/guide/model/GuidePage;->addHighLightWithOptions(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;Lcom/app/hubert/guide/model/HighlightOptions;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    new-array v4, v2, [I

    const v5, 0x7f0d0140

    invoke-virtual {v3, v5, v4}, Lcom/app/hubert/guide/model/GuidePage;->setLayoutRes(I[I)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    .line 770
    invoke-virtual {v1, v3}, Lcom/app/hubert/guide/core/Builder;->addGuidePage(Lcom/app/hubert/guide/model/GuidePage;)Lcom/app/hubert/guide/core/Builder;

    move-result-object v1

    .line 772
    invoke-static {}, Lcom/app/hubert/guide/model/GuidePage;->newInstance()Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_detect_btn:Landroid/widget/Button;

    sget-object v5, Lcom/app/hubert/guide/model/HighLight$Shape;->CIRCLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    .line 773
    invoke-virtual {v3, v4, v5, v0}, Lcom/app/hubert/guide/model/GuidePage;->addHighLightWithOptions(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;Lcom/app/hubert/guide/model/HighlightOptions;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    new-array v4, v2, [I

    const v5, 0x7f0d013f

    invoke-virtual {v3, v5, v4}, Lcom/app/hubert/guide/model/GuidePage;->setLayoutRes(I[I)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    .line 772
    invoke-virtual {v1, v3}, Lcom/app/hubert/guide/core/Builder;->addGuidePage(Lcom/app/hubert/guide/model/GuidePage;)Lcom/app/hubert/guide/core/Builder;

    move-result-object v1

    .line 774
    invoke-static {}, Lcom/app/hubert/guide/model/GuidePage;->newInstance()Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_btn:Landroid/widget/Button;

    sget-object v5, Lcom/app/hubert/guide/model/HighLight$Shape;->CIRCLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    .line 775
    invoke-virtual {v3, v4, v5, v0}, Lcom/app/hubert/guide/model/GuidePage;->addHighLightWithOptions(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;Lcom/app/hubert/guide/model/HighlightOptions;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    new-array v4, v2, [I

    const v5, 0x7f0d0149

    invoke-virtual {v3, v5, v4}, Lcom/app/hubert/guide/model/GuidePage;->setLayoutRes(I[I)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    .line 774
    invoke-virtual {v1, v3}, Lcom/app/hubert/guide/core/Builder;->addGuidePage(Lcom/app/hubert/guide/model/GuidePage;)Lcom/app/hubert/guide/core/Builder;

    move-result-object v1

    .line 776
    invoke-static {}, Lcom/app/hubert/guide/model/GuidePage;->newInstance()Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_mic_btn:Landroid/widget/Button;

    sget-object v5, Lcom/app/hubert/guide/model/HighLight$Shape;->CIRCLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    .line 777
    invoke-virtual {v3, v4, v5, v0}, Lcom/app/hubert/guide/model/GuidePage;->addHighLightWithOptions(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;Lcom/app/hubert/guide/model/HighlightOptions;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    new-array v4, v2, [I

    const v5, 0x7f0d0142

    invoke-virtual {v3, v5, v4}, Lcom/app/hubert/guide/model/GuidePage;->setLayoutRes(I[I)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    .line 776
    invoke-virtual {v1, v3}, Lcom/app/hubert/guide/core/Builder;->addGuidePage(Lcom/app/hubert/guide/model/GuidePage;)Lcom/app/hubert/guide/core/Builder;

    move-result-object v1

    .line 778
    invoke-static {}, Lcom/app/hubert/guide/model/GuidePage;->newInstance()Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_speaker_btn:Landroid/widget/Button;

    sget-object v5, Lcom/app/hubert/guide/model/HighLight$Shape;->CIRCLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    .line 779
    invoke-virtual {v3, v4, v5, v0}, Lcom/app/hubert/guide/model/GuidePage;->addHighLightWithOptions(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;Lcom/app/hubert/guide/model/HighlightOptions;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    new-array v4, v2, [I

    const v5, 0x7f0d0148

    invoke-virtual {v3, v5, v4}, Lcom/app/hubert/guide/model/GuidePage;->setLayoutRes(I[I)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    .line 778
    invoke-virtual {v1, v3}, Lcom/app/hubert/guide/core/Builder;->addGuidePage(Lcom/app/hubert/guide/model/GuidePage;)Lcom/app/hubert/guide/core/Builder;

    move-result-object v1

    .line 780
    invoke-static {}, Lcom/app/hubert/guide/model/GuidePage;->newInstance()Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_record_btn:Landroid/widget/Button;

    sget-object v5, Lcom/app/hubert/guide/model/HighLight$Shape;->CIRCLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    .line 781
    invoke-virtual {v3, v4, v5, v0}, Lcom/app/hubert/guide/model/GuidePage;->addHighLightWithOptions(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;Lcom/app/hubert/guide/model/HighlightOptions;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    new-array v4, v2, [I

    const v5, 0x7f0d0143

    invoke-virtual {v3, v5, v4}, Lcom/app/hubert/guide/model/GuidePage;->setLayoutRes(I[I)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    .line 780
    invoke-virtual {v1, v3}, Lcom/app/hubert/guide/core/Builder;->addGuidePage(Lcom/app/hubert/guide/model/GuidePage;)Lcom/app/hubert/guide/core/Builder;

    move-result-object v1

    .line 782
    invoke-static {}, Lcom/app/hubert/guide/model/GuidePage;->newInstance()Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_takephoto_btn:Landroid/widget/Button;

    sget-object v5, Lcom/app/hubert/guide/model/HighLight$Shape;->CIRCLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    .line 783
    invoke-virtual {v3, v4, v5, v0}, Lcom/app/hubert/guide/model/GuidePage;->addHighLightWithOptions(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;Lcom/app/hubert/guide/model/HighlightOptions;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v0

    new-array v3, v2, [I

    const v4, 0x7f0d0146

    invoke-virtual {v0, v4, v3}, Lcom/app/hubert/guide/model/GuidePage;->setLayoutRes(I[I)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v0

    .line 782
    invoke-virtual {v1, v0}, Lcom/app/hubert/guide/core/Builder;->addGuidePage(Lcom/app/hubert/guide/model/GuidePage;)Lcom/app/hubert/guide/core/Builder;

    move-result-object v0

    .line 784
    invoke-static {}, Lcom/app/hubert/guide/model/GuidePage;->newInstance()Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v1

    new-array v2, v2, [I

    const v3, 0x7f0d013d

    invoke-virtual {v1, v3, v2}, Lcom/app/hubert/guide/model/GuidePage;->setLayoutRes(I[I)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/app/hubert/guide/core/Builder;->addGuidePage(Lcom/app/hubert/guide/model/GuidePage;)Lcom/app/hubert/guide/core/Builder;

    move-result-object v0

    .line 785
    invoke-virtual {v0}, Lcom/app/hubert/guide/core/Builder;->show()Lcom/app/hubert/guide/core/Controller;

    return-void
.end method

.method private initPlayer()V
    .registers 4

    .line 964
    new-instance v0, Lcom/pilotlab/ffmpeg/ffmpeg;

    invoke-direct {v0}, Lcom/pilotlab/ffmpeg/ffmpeg;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    .line 965
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->w:I

    iget v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->h:I

    invoke-virtual {v0, v1, v2}, Lcom/pilotlab/ffmpeg/ffmpeg;->DecoderInit(II)I

    .line 966
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    invoke-virtual {v2}, Lcom/pilotlab/ffmpeg/ffmpeg;->GetFFmpegVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initVoice()V
    .registers 4

    .line 970
    new-instance v0, Lcom/pilotlab/ffmpeg/AudioDecoder;

    invoke-direct {v0}, Lcom/pilotlab/ffmpeg/AudioDecoder;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->audioDecoder:Lcom/pilotlab/ffmpeg/AudioDecoder;

    .line 971
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->audioDecoder:Lcom/pilotlab/ffmpeg/AudioDecoder;

    invoke-virtual {v0}, Lcom/pilotlab/ffmpeg/AudioDecoder;->prepare()Z

    const/4 v0, 0x0

    .line 972
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->isExit:Z

    .line 973
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$AudioThread;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$AudioThread;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V

    const-string v2, "Audio Thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->audioFramePlay:Ljava/lang/Thread;

    .line 975
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->audioFramePlay:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 977
    new-instance v0, Lcom/pilotlab/ffmpeg/MyAudioRecord;

    const/16 v1, 0x3e80

    invoke-direct {v0, v1}, Lcom/pilotlab/ffmpeg/MyAudioRecord;-><init>(I)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myAudioRecord:Lcom/pilotlab/ffmpeg/MyAudioRecord;

    .line 978
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myAudioRecord:Lcom/pilotlab/ffmpeg/MyAudioRecord;

    invoke-virtual {v0}, Lcom/pilotlab/ffmpeg/MyAudioRecord;->startVoip()V

    return-void
.end method

.method private initWayPoint()V
    .registers 4

    .line 653
    new-instance v0, Lcom/pilotlab/rollereye/Bean/WayPointBean;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/Bean/WayPointBean;-><init>()V

    .line 654
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->wayPoint_data:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 655
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->wayPointListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->updateUI()V

    return-void
.end method

.method private initWayPointDrwaLine()V
    .registers 4

    .line 702
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$6;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$6;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private openSlamView()V
    .registers 3

    .line 2148
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_btn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2149
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_stop_btn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2150
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2151
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->openWayPointView()V

    .line 2152
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->initWayPointDrwaLine()V

    return-void
.end method

.method private openWayPointView()V
    .registers 4

    .line 1842
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->setVisibility(I)V

    .line 1843
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view_open:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1844
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view_close:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method private queryWayPointList()V
    .registers 6

    .line 1832
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_LIST:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 1833
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_17

    .line 1834
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

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

    .line 1457
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myWiFiDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_c

    .line 1458
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myWiFiDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1459
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getConnectStatus()V

    .line 1461
    :cond_c
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myCheckeStatusDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_16

    .line 1462
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1463
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->checkStauts()V

    :cond_16
    return-void
.end method

.method private reduceResolution(II)V
    .registers 10

    .line 1104
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->checkVideoDispose:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_7

    .line 1105
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_7
    const v0, 0x7f110339

    .line 1108
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f110071

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$9;

    invoke-direct {v4, p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$9;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;II)V

    const p1, 0x7f11003a

    .line 1124
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$10;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$10;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V

    move-object v1, p0

    .line 1108
    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 1129
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void
.end method

.method private releasePlayer()V
    .registers 2

    .line 1015
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    invoke-virtual {v0}, Lcom/pilotlab/ffmpeg/ffmpeg;->DecoderRelease()I

    const/4 v0, 0x0

    .line 1016
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    return-void
.end method

.method private releaseVoice()V
    .registers 3

    const/4 v0, 0x1

    .line 1021
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->isExit:Z

    const/4 v0, 0x0

    .line 1022
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->isPlaying:Z

    .line 1023
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->audioDecoder:Lcom/pilotlab/ffmpeg/AudioDecoder;

    invoke-virtual {v1}, Lcom/pilotlab/ffmpeg/AudioDecoder;->release()V

    .line 1024
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myAudioRecord:Lcom/pilotlab/ffmpeg/MyAudioRecord;

    invoke-virtual {v1}, Lcom/pilotlab/ffmpeg/MyAudioRecord;->destroy()Z

    .line 1025
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_speaker_btn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setSelected(Z)V

    return-void
.end method

.method private saveWayPoint()V
    .registers 9

    .line 2112
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    const/4 v1, 0x1

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getPatrol()I

    move-result v0

    if-ne v0, v1, :cond_3b

    const v0, 0x7f110345

    .line 2113
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f11003e

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$30;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$30;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    .line 2118
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void

    .line 2122
    :cond_3b
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->getCurrentLocation()[F

    move-result-object v0

    const/4 v2, 0x0

    .line 2123
    aget v2, v0, v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    aget v6, v0, v1

    float-to-double v6, v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide v4, 0x3ffccccccccccccdL    # 1.8

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_7f

    aget v0, v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_7f

    .line 2124
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_SAVE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 2125
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_a6

    .line 2126
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto :goto_a6

    :cond_7f
    const v0, 0x7f110344

    .line 2129
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f110071

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$31;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$31;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V

    const v0, 0x7f11003a

    .line 2138
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$32;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$32;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V

    move-object v1, p0

    .line 2129
    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    .line 2143
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :cond_a6
    :goto_a6
    return-void
.end method

.method private scanLocalFile(Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;)V
    .registers 8

    .line 1471
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getInstance()Lcom/pilotlab/rollereye/Controller/FilePathController;

    move-result-object v1

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getDocumentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1473
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_57

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_57

    .line 1474
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_26
    if-ge v2, v1, :cond_57

    aget-object v3, v0, v2

    .line 1475
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_54

    .line 1476
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 1477
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_4f

    const/4 v0, 0x1

    .line 1478
    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setType(I)V

    goto :goto_57

    :cond_4f
    const/4 v0, 0x2

    .line 1479
    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setType(I)V

    goto :goto_57

    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_57
    :goto_57
    return-void
.end method

.method private selectShow()V
    .registers 6

    .line 2183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f11033c

    .line 2184
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2185
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2186
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "value"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2187
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2188
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const v3, 0x7f110346

    .line 2189
    invoke-virtual {p0, v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2190
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2191
    invoke-direct {p0, v0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->dialogChoice(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private setWayPoint()V
    .registers 6

    .line 2176
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_WAYPOINT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 2177
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_17

    .line 2178
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

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

.method private showWayPointMenu()V
    .registers 3

    .line 1877
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_detect_btn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1878
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_mic_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1879
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_speaker_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1880
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_record_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1881
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_takephoto_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1882
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_layout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private spacing(Landroid/view/MotionEvent;)F
    .registers 6

    const/4 v0, 0x0

    .line 618
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 619
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 620
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private startAudio()V
    .registers 5

    .line 910
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_12

    .line 911
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->IOTYPE_USER_IPCAM_AUDIOSTART:I

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_12
    return-void
.end method

.method private startCamera()V
    .registers 5

    .line 889
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_1f

    .line 890
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->isShowing()Z

    .line 893
    :cond_11
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->IOTYPE_USER_IPCAM_START:I

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_1f
    return-void
.end method

.method private startNav(Ljava/lang/String;)V
    .registers 6

    .line 2080
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_START:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 2081
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_2d

    .line 2082
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "pathName"

    if-eqz p1, :cond_13

    .line 2085
    :try_start_f
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1d

    :cond_13
    const-string p1, ""

    .line 2087
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception p1

    .line 2090
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 2092
    :goto_1d
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_2d
    return-void
.end method

.method private startStopRecord(Z)V
    .registers 6

    .line 844
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_55

    const-string v1, "record"

    const-string v2, "type"

    if-eqz p1, :cond_3b

    .line 846
    :try_start_b
    sget-object p1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->RECORD_START:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 847
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mode"

    const/4 v2, 0x0

    .line 848
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "duration"

    .line 849
    invoke-static {p0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getRecordDuration(Landroid/content/Context;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "count"

    .line 850
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 851
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_59

    .line 852
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto :goto_59

    .line 855
    :cond_3b
    sget-object p1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->RECORD_STOP:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 856
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 857
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_59

    .line 858
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_54} :catch_55

    goto :goto_59

    :catch_55
    move-exception p1

    .line 862
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_59
    :goto_59
    return-void
.end method

.method private startVoip()V
    .registers 5

    .line 927
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_12

    .line 928
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->IOTYPE_USER_IPCAM_SPEAKERSTART:I

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_12
    return-void
.end method

.method private stopAudio()V
    .registers 5

    .line 918
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_12

    .line 919
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->IOTYPE_USER_IPCAM_AUDIOSTOP:I

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_12
    return-void
.end method

.method private stopCamera()V
    .registers 5

    .line 901
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_12

    .line 902
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->IOTYPE_USER_IPCAM_STOP:I

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_12
    return-void
.end method

.method private stopVoip()V
    .registers 5

    .line 935
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_12

    .line 936
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->IOTYPE_USER_IPCAM_SPEAKERSTOP:I

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_12
    return-void
.end method

.method private symRecordStatus()V
    .registers 6

    .line 824
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->RECORD_STATUS:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 825
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    const-string v2, "type"

    const-string v3, "record"

    .line 827
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mode"

    const/4 v3, 0x0

    .line 828
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "duration"

    .line 829
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "count"

    .line 830
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception v2

    .line 832
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 834
    :goto_23
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v2, :cond_37

    .line 835
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v3, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v4, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_37
    return-void
.end method

.method private takePhoto()V
    .registers 6

    .line 870
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->RECORD_START:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 871
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    const-string v2, "type"

    const-string v3, "snapshot"

    .line 873
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mode"

    const/4 v3, 0x0

    .line 874
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "duration"

    .line 875
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "count"

    const/4 v3, 0x1

    .line 876
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_1f} :catch_20

    goto :goto_24

    :catch_20
    move-exception v2

    .line 878
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 880
    :goto_24
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v2, :cond_38

    .line 881
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v3, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v4, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_38
    return-void
.end method

.method private takePhotoAnimation()V
    .registers 4

    .line 1915
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_takephoto_btn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 1916
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_blackCover:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1917
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_blackCover:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1918
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_blackCover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1919
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 1920
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 1921
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$22;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$22;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V

    .line 1922
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1941
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private testH264File()V
    .registers 5

    .line 646
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/abcd.h264"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->outputStream:Ljava/io/FileOutputStream;
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception v0

    .line 648
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_2a
    return-void
.end method

.method private testVoipFile()V
    .registers 5

    .line 638
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/abcd.aac"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->outputStream:Ljava/io/FileOutputStream;
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception v0

    .line 640
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_2a
    return-void
.end method

.method private testWayPointData()V
    .registers 7

    const-string v0, "Kitchen - Living room"

    const-string v1, "Bathroom - Kitchen"

    const-string v2, "Grocery room - Bathroom"

    const-string v3, "Swimming pool - Forecourt"

    const-string v4, "Backyard - Forecourt"

    const-string v5, "Forecourt - Kitchen"

    .line 733
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 735
    :goto_12
    array-length v3, v0

    if-ge v2, v3, :cond_2f

    .line 736
    new-instance v3, Lcom/pilotlab/rollereye/Bean/WayPointBean;

    invoke-direct {v3}, Lcom/pilotlab/rollereye/Bean/WayPointBean;-><init>()V

    const-string v4, ""

    .line 737
    invoke-virtual {v3, v4}, Lcom/pilotlab/rollereye/Bean/WayPointBean;->setCreateTime(Ljava/lang/String;)V

    .line 738
    invoke-virtual {v3, v2}, Lcom/pilotlab/rollereye/Bean/WayPointBean;->setId(I)V

    .line 739
    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Lcom/pilotlab/rollereye/Bean/WayPointBean;->setName(Ljava/lang/String;)V

    .line 740
    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->wayPoint_data:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 743
    :cond_2f
    new-instance v0, Lcom/pilotlab/rollereye/Bean/WayPointBean;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/Bean/WayPointBean;-><init>()V

    .line 744
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->wayPoint_data:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 745
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->wayPointListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->updateUI()V

    return-void
.end method

.method private zoom(F)V
    .registers 4

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u653e\u5927\u7f29\u5c0f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionEvent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->scalef(F)V

    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/AudioFrameMessage;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1553
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/AudioFrameMessage;->getData_length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "---- audio:length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_speaker_btn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1555
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->audioData_Queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_27
    return-void
.end method

.method public Event(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1195
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->Event(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;)V

    .line 1196
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;->getMessage()Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->getTag()I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_14

    const/16 v1, 0x24

    if-eq v0, v1, :cond_14

    goto :goto_35

    .line 1199
    :cond_14
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;->getMessage()Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getDefaultP2PClient(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object p1

    sget-object v0, Lcom/pilotlab/rollereye/Bean/ConnectMode;->WIFIDIRECT:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne p1, v0, :cond_35

    .line 1200
    :cond_32
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->checkWiFiDirect()V

    :cond_35
    :goto_35
    return-void
.end method

.method public Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    .registers 16
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1208
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 1209
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getType()I

    move-result v0

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    if-ne v0, v1, :cond_4ad

    .line 1211
    :try_start_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1212
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "id"

    .line 1213
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_23} :catch_4ad

    const/16 v1, 0x7d2

    const-string v2, "status"

    const-string v3, "body"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p1, v1, :cond_53

    .line 1215
    :try_start_2d
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1216
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4ad

    const-string v0, "running"

    .line 1217
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v5, :cond_49

    .line 1218
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_record_btn:Landroid/widget/Button;

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setSelected(Z)V

    .line 1219
    invoke-virtual {p0, v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->startStopRecAnimator(Z)V

    goto/16 :goto_4ad

    .line 1221
    :cond_49
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_record_btn:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setSelected(Z)V

    .line 1222
    invoke-virtual {p0, v4}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->startStopRecAnimator(Z)V

    goto/16 :goto_4ad

    :cond_53
    const/16 v1, 0x138f

    const v6, 0x7f11003e

    if-ne p1, v1, :cond_80

    .line 1226
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1227
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_4ad

    const p1, 0x7f11033e

    .line 1228
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$13;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$13;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 1233
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto/16 :goto_4ad

    :cond_80
    const/16 v1, 0x1389

    const/4 v7, -0x1

    const/4 v8, 0x2

    if-ne p1, v1, :cond_101

    .line 1236
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1237
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4ad

    const-string v0, "position"

    .line 1238
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_96} :catch_4ad

    :try_start_96
    const-string v1, "attitude"

    .line 1241
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_9c} :catch_9d

    goto :goto_a2

    :catch_9d
    move-exception p1

    .line 1243
    :try_start_9e
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move p1, v7

    .line 1245
    :goto_a2
    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->nav_status:I

    iget v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->nav_stop:I

    if-eq v1, v2, :cond_4ad

    const/high16 v1, 0x447a0000    # 1000.0f

    const-wide v2, 0x408f400000000000L    # 1000.0

    if-eq p1, v7, :cond_d9

    .line 1249
    iget-object v6, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v9

    mul-double/2addr v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-float v4, v9

    div-float/2addr v4, v1

    .line 1250
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v9

    mul-double/2addr v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-float v5, v9

    div-float/2addr v5, v1

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v7

    mul-double/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-float v0, v2

    div-float/2addr v0, v1

    .line 1249
    invoke-virtual {v6, v4, v5, v0, p1}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->update(FFFI)V

    goto/16 :goto_4ad

    .line 1252
    :cond_d9
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-float v4, v6

    div-float/2addr v4, v1

    .line 1253
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v5

    mul-double/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-float v5, v5

    div-float/2addr v5, v1

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-float v0, v2

    div-float/2addr v0, v1

    .line 1252
    invoke-virtual {p1, v4, v5, v0}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->update(FFF)V

    goto/16 :goto_4ad

    :cond_101
    const/16 v1, 0x138a

    if-ne p1, v1, :cond_114

    .line 1257
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1258
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4ad

    .line 1260
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->reCheckStatus()V

    goto/16 :goto_4ad

    :cond_114
    const/16 v1, 0x138d

    if-ne p1, v1, :cond_210

    .line 1263
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1264
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_209

    .line 1265
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->wayPoint_data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1266
    :cond_128
    :goto_128
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13e

    .line 1267
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/WayPointBean;

    .line 1268
    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/WayPointBean;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_128

    .line 1269
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_128

    :cond_13e
    const-string v0, "paths"

    .line 1272
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move v1, v4

    .line 1273
    :goto_145
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_167

    .line 1274
    new-instance v2, Lcom/pilotlab/rollereye/Bean/WayPointBean;

    invoke-direct {v2}, Lcom/pilotlab/rollereye/Bean/WayPointBean;-><init>()V

    const-string v3, ""

    .line 1275
    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/Bean/WayPointBean;->setCreateTime(Ljava/lang/String;)V

    .line 1276
    invoke-virtual {v2, v1}, Lcom/pilotlab/rollereye/Bean/WayPointBean;->setId(I)V

    .line 1277
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/Bean/WayPointBean;->setName(Ljava/lang/String;)V

    .line 1278
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->wayPoint_data:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_145

    :cond_167
    const-string v0, "pathlist"

    .line 1281
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_209

    .line 1283
    :goto_16f
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_209

    .line 1284
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 1285
    new-instance v1, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-direct {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;-><init>()V

    const-string v2, "size"

    .line 1286
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setFileSize(J)V

    const-string v2, "name"

    .line 1287
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setFileName(Ljava/lang/String;)V

    .line 1288
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Global;->getDownloadSession()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setSession(I)V

    const-string v2, "create_time"

    .line 1289
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setCreateTime(Ljava/lang/String;)V

    const-string v2, "path"

    .line 1290
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setRemote_path(Ljava/lang/String;)V

    .line 1291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getInstance()Lcom/pilotlab/rollereye/Controller/FilePathController;

    move-result-object v2

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getDocumentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setLocal_path(Ljava/lang/String;)V

    .line 1292
    invoke-direct {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->scanLocalFile(Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;)V

    .line 1294
    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getDownload_status()I

    move-result v0

    if-eq v0, v8, :cond_205

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getType()I

    move-result v0

    if-ne v0, v5, :cond_1e6

    goto :goto_205

    .line 1296
    :cond_1e6
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PdownloadList:Ljava/util/List;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_205

    .line 1297
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_205

    .line 1298
    new-instance v0, Lcom/pilotlab/rollereye/P2P/P2PDownload;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-direct {v0, v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PDownload;-><init>(Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;Lcom/pilotlab/rollereye/P2P/P2PClient;)V

    .line 1299
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->downloadBegin()V

    .line 1300
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PdownloadList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_205
    :goto_205
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_16f

    .line 1307
    :cond_209
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->wayPointListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->updateUI()V

    goto/16 :goto_4ad

    :cond_210
    const/16 v1, 0x138b

    if-ne p1, v1, :cond_259

    .line 1310
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1311
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_23d

    .line 1313
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->reCheckStatus()V

    const p1, 0x7f110347

    .line 1314
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$14;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$14;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 1319
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto/16 :goto_4ad

    :cond_23d
    const p1, 0x7f110343

    .line 1321
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$15;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$15;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 1326
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto/16 :goto_4ad

    :cond_259
    const/16 v1, 0x138e

    if-ne p1, v1, :cond_28c

    .line 1329
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1330
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_273

    const-string p1, "partol"

    const-string v0, "\u8bbe\u7f6e\u5f00\u59cb\u4e3a1"

    .line 1331
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->reCheckStatus()V

    goto/16 :goto_4ad

    .line 1334
    :cond_273
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_4ad

    .line 1335
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    const v0, 0x7f110340

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v7}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto/16 :goto_4ad

    :cond_28c
    const/16 v1, 0x1390

    if-ne p1, v1, :cond_295

    .line 1339
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->reCheckStatus()V

    goto/16 :goto_4ad

    :cond_295
    const/16 v1, 0x138c

    if-ne p1, v1, :cond_2a2

    .line 1341
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1342
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    goto/16 :goto_4ad

    :cond_2a2
    const/16 v1, 0x1392

    if-ne p1, v1, :cond_2c4

    .line 1346
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1347
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4ad

    .line 1348
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_tips:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1349
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->addEditFavoriteWaypoint()V

    .line 1350
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4ad

    :cond_2c4
    const/16 v1, 0xbb9

    if-ne p1, v1, :cond_467

    .line 1353
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz p1, :cond_4ad

    .line 1355
    invoke-direct {p0, v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->enableStatusButton(Z)V

    .line 1356
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    if-eqz p1, :cond_455

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    if-eqz p1, :cond_455

    .line 1357
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getBattary()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;->getCharging()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v5, :cond_30b

    .line 1358
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->joystick_container:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2fa

    .line 1359
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->joystick_container:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1360
    :cond_2fa
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_out_btn:Landroid/widget/Button;

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1361
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_bac_home_tips:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1362
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_go_home_btn:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_39a

    .line 1364
    :cond_30b
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getReverse()I

    move-result p1

    if-ne p1, v5, :cond_326

    .line 1365
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_bac_home_tips:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1366
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_go_home_btn:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_330

    .line 1368
    :cond_326
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_bac_home_tips:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1369
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_go_home_btn:Landroid/widget/Button;

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1371
    :goto_330
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getCalibration()I

    move-result p1

    if-eq p1, v5, :cond_395

    .line 1373
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getEditPath()I

    move-result p1

    if-ne p1, v5, :cond_380

    .line 1375
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getReverse()I

    move-result p1

    if-eq p1, v5, :cond_372

    .line 1376
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getSystemVer()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$SystemBean;

    move-result-object p1

    if-eqz p1, :cond_377

    .line 1377
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_favorite_btn:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_377

    .line 1380
    :cond_372
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_favorite_btn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1382
    :cond_377
    :goto_377
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->mDefaultController:Lcom/pilotlab/rollereye/Controller/DefaultController;

    const v1, 0x7f08022c

    invoke-virtual {p1, v1}, Lcom/pilotlab/rollereye/Controller/DefaultController;->createLeftControlTouchView(I)V

    goto :goto_388

    .line 1384
    :cond_380
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->mDefaultController:Lcom/pilotlab/rollereye/Controller/DefaultController;

    const v1, 0x7f08022b

    invoke-virtual {p1, v1}, Lcom/pilotlab/rollereye/Controller/DefaultController;->createLeftControlTouchView(I)V

    .line 1386
    :goto_388
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->joystick_container:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_395

    .line 1387
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->joystick_container:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1390
    :cond_395
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_out_btn:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1392
    :goto_39a
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getEstimate()I

    move-result p1

    if-ne p1, v5, :cond_3bb

    iget p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->nav_status:I

    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->nav_stop:I

    if-ne p1, v0, :cond_3bb

    .line 1394
    iget p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->nav_estimate:I

    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->nav_status:I

    .line 1395
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->closeWayPointMenu()V

    .line 1396
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->openSlamView()V

    goto :goto_3d8

    .line 1398
    :cond_3bb
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getEstimate()I

    move-result p1

    if-nez p1, :cond_3d8

    iget p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->nav_status:I

    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->nav_estimate:I

    if-ne p1, v0, :cond_3d8

    .line 1399
    iget p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->nav_stop:I

    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->nav_status:I

    .line 1401
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->closeSlamView()V

    .line 1405
    :cond_3d8
    :goto_3d8
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getEstimate()I

    move-result p1

    if-ne p1, v5, :cond_434

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getPatrol()I

    move-result p1

    if-ne p1, v5, :cond_434

    .line 1406
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getPatrolName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_434

    .line 1408
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getInstance()Lcom/pilotlab/rollereye/Controller/FilePathController;

    move-result-object v2

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getDocumentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1410
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->setMapFile(Ljava/io/File;)V

    .line 1414
    :cond_434
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getCamera()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$CameraBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$CameraBean;->getRecord()I

    move-result p1

    if-ne p1, v5, :cond_44d

    .line 1415
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_record_btn:Landroid/widget/Button;

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setSelected(Z)V

    .line 1416
    invoke-virtual {p0, v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->startStopRecAnimator(Z)V

    goto :goto_455

    .line 1418
    :cond_44d
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_record_btn:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setSelected(Z)V

    .line 1419
    invoke-virtual {p0, v4}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->startStopRecAnimator(Z)V

    .line 1422
    :cond_455
    :goto_455
    iget p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->countCameraStatus:I

    if-lez p1, :cond_461

    iget p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->countCameraStatus:I

    rem-int/2addr p1, v8

    if-nez p1, :cond_461

    .line 1423
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->startCamera()V

    .line 1424
    :cond_461
    iget p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->countCameraStatus:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->countCameraStatus:I

    goto :goto_4ad

    :cond_467
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_4ad

    .line 1427
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "init"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4ad

    .line 1430
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->checkDefaultWiFiDirectDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    if-eqz p1, :cond_484

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->checkDefaultWiFiDirectDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_484

    return-void

    :cond_484
    const p1, 0x7f11034c

    .line 1433
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v6}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$16;

    invoke-direct {v10, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$16;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V

    const p1, 0x7f110007

    .line 1441
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$17;

    invoke-direct {v12, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$17;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V

    const/4 v13, 0x0

    move-object v7, p0

    .line 1433
    invoke-virtual/range {v7 .. v13}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->checkDefaultWiFiDirectDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 1447
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->checkDefaultWiFiDirectDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V
    :try_end_4ad
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_4ad} :catch_4ad

    :catch_4ad
    :cond_4ad
    :goto_4ad
    return-void
.end method

.method public Event(Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;)V
    .registers 16
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->POSTING:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x0

    .line 1562
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->countCameraStatus:I

    .line 1564
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getTimeStamp()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->videoTimeStamp:J

    .line 1566
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getPar3()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_36

    .line 1568
    iget-wide v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->index_iframe:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2f

    .line 1569
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getIndex()J

    move-result-wide v3

    iget-wide v7, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->index_iframe:J

    sub-long/2addr v3, v7

    const-wide/16 v7, 0x1e

    rem-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-nez v1, :cond_2b

    const/16 v1, 0x1e

    .line 1570
    iput v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->defaultFrames:I

    goto :goto_2f

    :cond_2b
    const/16 v1, 0x19

    .line 1572
    iput v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->defaultFrames:I

    .line 1576
    :cond_2f
    :goto_2f
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getIndex()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->index_iframe:J

    goto :goto_3c

    .line 1578
    :cond_36
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getIndex()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->index_bframe:J

    .line 1581
    :goto_3c
    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    if-nez v5, :cond_41

    return-void

    .line 1584
    :cond_41
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getData()[B

    move-result-object v6

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getData_length()I

    move-result v7

    iget-object v8, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->y:[B

    iget-object v9, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->y_len:[I

    iget-object v10, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->u:[B

    iget-object v11, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->u_len:[I

    iget-object v12, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->v:[B

    iget-object v13, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->v_len:[I

    invoke-virtual/range {v5 .. v13}, Lcom/pilotlab/ffmpeg/ffmpeg;->Decode([BI[B[I[B[I[B[I)I

    move-result v1

    const/4 v3, -0x2

    if-ne v1, v3, :cond_7f

    .line 1587
    new-array p1, v2, [I

    .line 1588
    new-array v1, v2, [I

    .line 1589
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    invoke-virtual {v3, p1, v1}, Lcom/pilotlab/ffmpeg/ffmpeg;->Rest([I[I)I

    .line 1590
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1591
    iput v2, v3, Landroid/os/Message;->what:I

    .line 1592
    aget p1, p1, v0

    iput p1, v3, Landroid/os/Message;->arg1:I

    .line 1593
    aget p1, v1, v0

    iput p1, v3, Landroid/os/Message;->arg2:I

    .line 1594
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/16 p1, 0xf

    .line 1596
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->checkVideoAutoAdjust(I)V

    goto :goto_a1

    :cond_7f
    if-ltz v1, :cond_a1

    .line 1599
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myBitRate:F

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getData_length()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr p1, v1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myBitRate:F

    .line 1601
    iget-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->begin2CheckFrame:Z

    if-nez p1, :cond_94

    .line 1602
    iput-boolean v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->begin2CheckFrame:Z

    .line 1604
    :cond_94
    iget-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->receiveFrameCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->receiveFrameCount:J

    .line 1610
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_a1
    :goto_a1
    return-void
.end method

.method public Event(Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1535
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "voip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->getData()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_24

    .line 1546
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendVoipMessage(Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;)V

    :cond_24
    return-void
.end method

.method public OnLongClick(Landroid/view/View;I)V
    .registers 3

    .line 1977
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->TAG:Ljava/lang/String;

    const-string p2, "OnLongClick"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->wayPoint_data:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x2

    if-ge p1, p2, :cond_11

    return-void

    .line 1982
    :cond_11
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->wayPointListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->isEdit()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->setEdit(Z)V

    .line 1983
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->wayPointListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->updateUI()V

    return-void
.end method

.method protected initEvent()V
    .registers 3

    .line 375
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initEvent()V

    .line 376
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_setting_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_takephoto_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_record_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_mic_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_bac_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_detect_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_out_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_go_home_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_speaker_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_stop_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_favorite_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view_close:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view_open:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->mDefaultController:Lcom/pilotlab/rollereye/Controller/DefaultController;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Controller/DefaultController;->setLeftTouchViewListener(Lcom/pilotlab/rollereye/MyInterface/JoystickTouchViewListener;)V

    .line 457
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->mDefaultController:Lcom/pilotlab/rollereye/Controller/DefaultController;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$3;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Controller/DefaultController;->setRightTouchViewListener(Lcom/pilotlab/rollereye/MyInterface/JoystickTouchViewListener;)V

    .line 540
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$4;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$4;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected initView()V
    .registers 11

    .line 263
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initView()V

    const v0, 0x7f0a055a

    .line 265
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->surfaceView:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    .line 267
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    .line 270
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$1;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myHandler:Landroid/os/Handler;

    const v0, 0x7f0a043f

    .line 300
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->joystick_container:Landroid/widget/RelativeLayout;

    .line 301
    new-instance v0, Lcom/pilotlab/rollereye/Controller/DefaultController;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->joystick_container:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/pilotlab/rollereye/Bean/PadStyle;->PUSHED:Lcom/pilotlab/rollereye/Bean/PadStyle;

    invoke-direct {v0, p0, v2, v3}, Lcom/pilotlab/rollereye/Controller/DefaultController;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/pilotlab/rollereye/Bean/PadStyle;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->mDefaultController:Lcom/pilotlab/rollereye/Controller/DefaultController;

    .line 303
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->mDefaultController:Lcom/pilotlab/rollereye/Controller/DefaultController;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Controller/DefaultController;->createViews()V

    .line 304
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->mDefaultController:Lcom/pilotlab/rollereye/Controller/DefaultController;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/Controller/DefaultController;->showViews(Z)V

    const v0, 0x7f0a0072

    .line 307
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_takephoto_btn:Landroid/widget/Button;

    const v0, 0x7f0a0070

    .line 308
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_setting_btn:Landroid/widget/ImageButton;

    const v0, 0x7f0a006a

    .line 309
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_record_btn:Landroid/widget/Button;

    const v0, 0x7f0a0066

    .line 310
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_mic_btn:Landroid/widget/Button;

    const v0, 0x7f0a005c

    .line 311
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_bac_btn:Landroid/widget/ImageButton;

    const v0, 0x7f0a0062

    .line 313
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_detect_btn:Landroid/widget/Button;

    const v0, 0x7f0a0074

    .line 314
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_btn:Landroid/widget/Button;

    const v0, 0x7f0a0067

    .line 315
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_out_btn:Landroid/widget/Button;

    const v0, 0x7f0a0065

    .line 316
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_go_home_btn:Landroid/widget/Button;

    const v0, 0x7f0a0071

    .line 317
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_speaker_btn:Landroid/widget/Button;

    const v0, 0x7f0a0077

    .line 318
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_stop_btn:Landroid/widget/Button;

    const v0, 0x7f0a0063

    .line 319
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_favorite_btn:Landroid/widget/Button;

    const v0, 0x7f0a0060

    .line 320
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_blackCover:Landroid/view/View;

    const v0, 0x7f0a006d

    .line 321
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_scan_layout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0075

    .line 322
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_layout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a006e

    .line 324
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/CustomerView/ScanView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_scanview:Lcom/pilotlab/rollereye/CustomerView/ScanView;

    const v0, 0x7f0a007b

    .line 325
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view_close:Landroid/widget/ImageButton;

    const v0, 0x7f0a007d

    .line 326
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view_open:Landroid/widget/ImageButton;

    const v0, 0x7f0a0076

    .line 328
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 329
    new-instance v0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->wayPoint_data:Ljava/util/List;

    invoke-direct {v0, p0, v3, p0}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$onItemCallback;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->wayPointListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;

    .line 330
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 331
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 332
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->wayPointListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v0, 0x7f0a007c

    .line 334
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view_layout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0079

    .line 335
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    .line 336
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->setZOrderMediaOverlay(Z)V

    const v0, 0x7f0a007e

    .line 337
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view_text:Landroid/widget/TextView;

    .line 338
    new-instance v0, Landroid/text/SpannableString;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view_text:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const v3, 0x7f0801ab

    .line 340
    invoke-virtual {p0, v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 341
    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view_text:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view_text:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineHeight()I

    move-result v5

    int-to-double v8, v5

    mul-double/2addr v8, v6

    double-to-int v5, v8

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 342
    new-instance v4, Landroid/text/style/ImageSpan;

    invoke-direct {v4, v3, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/16 v1, 0x22

    const/4 v3, 0x3

    .line 343
    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 344
    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view_text:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f020014

    .line 346
    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v5

    check-cast v5, Landroid/animation/ObjectAnimator;

    .line 348
    iget-object v6, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_view_text:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 349
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    const v5, 0x7f0a005d

    .line 351
    invoke-virtual {p0, v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_bac_home_tips:Landroid/widget/TextView;

    .line 352
    new-instance v5, Landroid/text/SpannableString;

    iget-object v6, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_bac_home_tips:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 353
    invoke-virtual {v5, v4, v2, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 354
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_bac_home_tips:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 358
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_bac_home_tips:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 359
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    const v0, 0x7f0a0069

    .line 362
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_rec_ly:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0068

    .line 363
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_rec_img:Landroid/widget/ImageView;

    const v0, 0x7f0a0073

    .line 365
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_tv_bitRate:Landroid/widget/TextView;

    const v0, 0x7f0a005f

    .line 366
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_bitRate_ry:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a006b

    .line 367
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_scaleview_ry:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a006c

    .line 368
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/CustomerView/ScaleView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_scaleview_scaleview:Lcom/pilotlab/rollereye/CustomerView/ScaleView;

    const v0, 0x7f0a0078

    .line 370
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_tips:Landroid/widget/TextView;

    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .line 1700
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1706
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1708
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_186

    packed-switch p1, :pswitch_data_1a0

    packed-switch p1, :pswitch_data_1b0

    goto/16 :goto_185

    .line 1718
    :pswitch_16
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->takePhotoAnimation()V

    .line 1719
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->takePhoto()V

    goto/16 :goto_185

    .line 1739
    :pswitch_1e
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_speaker_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 1740
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_speaker_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_37

    .line 1741
    iput-boolean v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->isPlaying:Z

    .line 1742
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->startAudio()V

    goto/16 :goto_185

    .line 1744
    :cond_37
    iput-boolean v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->isPlaying:Z

    .line 1745
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->stopAudio()V

    goto/16 :goto_185

    .line 1777
    :pswitch_3e
    const-class p1, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1778
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_185

    :pswitch_48
    const/4 p1, 0x0

    .line 1784
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->startNav(Ljava/lang/String;)V

    .line 1785
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->goOutCharge()V

    goto/16 :goto_185

    .line 1726
    :pswitch_51
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_mic_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 1727
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_mic_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 1729
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->startVoip()V

    .line 1730
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myAudioRecord:Lcom/pilotlab/ffmpeg/MyAudioRecord;

    invoke-virtual {p1, v1}, Lcom/pilotlab/ffmpeg/MyAudioRecord;->pause(Z)Z

    goto/16 :goto_185

    .line 1732
    :cond_6d
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myAudioRecord:Lcom/pilotlab/ffmpeg/MyAudioRecord;

    invoke-virtual {p1, v2}, Lcom/pilotlab/ffmpeg/MyAudioRecord;->pause(Z)Z

    goto/16 :goto_185

    .line 1781
    :pswitch_74
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->goBackCharge()V

    goto/16 :goto_185

    .line 1788
    :pswitch_79
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    if-eqz p1, :cond_185

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    if-eqz p1, :cond_185

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getEditPath()I

    move-result p1

    if-ne p1, v2, :cond_185

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    .line 1789
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getReverse()I

    move-result p1

    if-eq p1, v2, :cond_185

    .line 1790
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getWaypoint()I

    move-result p1

    const/4 v0, 0x5

    const v1, 0x7f110070

    if-ge p1, v0, :cond_ea

    .line 1791
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_tips:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getWaypoint()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1792
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->setWayPoint()V

    goto/16 :goto_185

    .line 1794
    :cond_ea
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_tips:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f11002d

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_185

    .line 1722
    :pswitch_10b
    const-class p1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1723
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_185

    .line 1774
    :sswitch_115
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->openWayPointView()V

    goto/16 :goto_185

    .line 1771
    :sswitch_11a
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->closeWayPointView()V

    goto :goto_185

    .line 1765
    :sswitch_11e
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    if-eqz p1, :cond_14e

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    if-eqz p1, :cond_14e

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getEditPath()I

    move-result p1

    if-ne p1, v2, :cond_14e

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    .line 1766
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getReverse()I

    move-result p1

    if-eq p1, v2, :cond_14e

    .line 1767
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->selectShow()V

    goto :goto_185

    .line 1768
    :cond_14e
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->cancelDialogNav()V

    goto :goto_185

    .line 1752
    :sswitch_152
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 1753
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_waypoint_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_16b

    .line 1754
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->showWayPointMenu()V

    .line 1755
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->queryWayPointList()V

    goto :goto_185

    .line 1757
    :cond_16b
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->closeWayPointMenu()V

    goto :goto_185

    .line 1710
    :sswitch_16f
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_record_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_17b

    .line 1711
    invoke-direct {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->startStopRecord(Z)V

    goto :goto_17e

    .line 1713
    :cond_17b
    invoke-direct {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->startStopRecord(Z)V

    .line 1715
    :goto_17e
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->reCheckStatus()V

    goto :goto_185

    .line 1736
    :sswitch_182
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->finish()V

    :cond_185
    :goto_185
    :pswitch_185
    return-void

    :sswitch_data_186
    .sparse-switch
        0x7f0a005c -> :sswitch_182
        0x7f0a006a -> :sswitch_16f
        0x7f0a0074 -> :sswitch_152
        0x7f0a0077 -> :sswitch_11e
        0x7f0a007b -> :sswitch_11a
        0x7f0a007d -> :sswitch_115
    .end sparse-switch

    :pswitch_data_1a0
    .packed-switch 0x7f0a0062
        :pswitch_10b
        :pswitch_79
        :pswitch_185
        :pswitch_74
        :pswitch_51
        :pswitch_48
    .end packed-switch

    :pswitch_data_1b0
    .packed-switch 0x7f0a006f
        :pswitch_185
        :pswitch_3e
        :pswitch_1e
        :pswitch_16
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 246
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 1665
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onDestroy()V

    .line 1666
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->editDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    if-eqz v0, :cond_a

    .line 1667
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->dismiss()V

    .line 1668
    :cond_a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->outputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_16

    .line 1670
    :try_start_e
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception v0

    .line 1672
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1675
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myWayPointDispose:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1d

    .line 1676
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1677
    :cond_1d
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->bitRateDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_24

    .line 1678
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1679
    :cond_24
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->checkDownloadDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_2b

    .line 1680
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1681
    :cond_2b
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PdownloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4a

    const/4 v0, 0x0

    .line 1682
    :goto_34
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PdownloadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4a

    .line 1683
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PdownloadList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/P2P/P2PDownload;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->downloadEnd()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_4a
    return-void
.end method

.method public onItemAdd(Landroid/view/View;I)V
    .registers 10

    .line 1994
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    if-eqz p1, :cond_9e

    .line 1995
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getBattary()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;->getCharging()I

    move-result p1

    const/4 p2, 0x1

    const v0, 0x7f11003e

    if-ne p1, p2, :cond_84

    .line 1996
    new-instance p1, Landroid/widget/EditText;

    invoke-direct {p1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string p2, ""

    .line 1997
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 1998
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x7f110348

    .line 1999
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(I)V

    const/high16 p2, 0x41200000    # 10.0f

    .line 2000
    invoke-static {p0, p2}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, p2}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, p2}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, p2}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 2001
    new-instance p2, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    invoke-direct {p2, p0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11003b

    .line 2002
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 2003
    invoke-virtual {p2, p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 2004
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$24;

    invoke-direct {v1, p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$24;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;Landroid/widget/EditText;)V

    invoke-virtual {p2, v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const v0, 0x7f110007

    .line 2015
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$25;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$25;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V

    invoke-virtual {p2, v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 2021
    invoke-virtual {p2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p2

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->editDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 2022
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->editDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$26;

    invoke-direct {v0, p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$26;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;Landroid/widget/EditText;)V

    invoke-virtual {p2, v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2028
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->editDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_9e

    :cond_84
    const p1, 0x7f11033f

    .line 2030
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$27;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$27;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 2035
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :cond_9e
    :goto_9e
    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 9

    .line 1946
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->wayPointListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->isEdit()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 1947
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->wayPointListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->setEdit(Z)V

    .line 1948
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->wayPointListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->updateUI()V

    goto :goto_78

    .line 1950
    :cond_14
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    if-eqz p1, :cond_78

    .line 1951
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getBattary()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;->getCharging()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5b

    .line 1952
    sget-object p1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_PATROL:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 1953
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_30
    const-string v1, "path"

    .line 1955
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->wayPoint_data:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/pilotlab/rollereye/Bean/WayPointBean;

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Bean/WayPointBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception p2

    .line 1957
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1959
    :goto_46
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz p2, :cond_78

    .line 1960
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto :goto_78

    :cond_5b
    const p1, 0x7f110341

    .line 1963
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f11003e

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$23;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$23;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 1968
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :cond_78
    :goto_78
    return-void
.end method

.method public onItemDelete(Landroid/view/View;I)V
    .registers 9

    const p1, 0x7f11033d

    .line 2042
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f110071

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$28;

    invoke-direct {v3, p0, p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$28;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;I)V

    const p1, 0x7f11003a

    .line 2068
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$29;

    invoke-direct {v5, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$29;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V

    move-object v0, p0

    .line 2042
    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 2073
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 983
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onPause()V

    .line 984
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 985
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 987
    :cond_14
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myControlCommandDispose:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1b

    .line 988
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 990
    :cond_1b
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->leftControlDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_22

    .line 991
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 993
    :cond_22
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->rightControlDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_29

    .line 994
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 996
    :cond_29
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->checkDefaultWiFiDirectDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    if-eqz v0, :cond_30

    .line 997
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->dismiss()V

    .line 999
    :cond_30
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->myCheckeStatusDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_37

    .line 1000
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1002
    :cond_37
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->checkVideoDispose:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_3e

    .line 1003
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1006
    :cond_3e
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->stopCamera()V

    .line 1007
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->releasePlayer()V

    .line 1009
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->releaseVoice()V

    .line 1010
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->stopAudio()V

    .line 1011
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->stopVoip()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 942
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onResume()V

    .line 943
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 944
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 946
    :cond_14
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->surfaceView:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->setRenderShowPic(Z)V

    .line 948
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->checkStauts()V

    .line 950
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->initControlCommand()V

    .line 951
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->initPlayer()V

    .line 952
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->startCamera()V

    .line 953
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->initVoice()V

    .line 954
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->startVoip()V

    .line 955
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->checkWiFiDirect()V

    .line 956
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->checkShowBitRate()V

    .line 957
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->checkShowBaseLine()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d001f

    .line 251
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 2

    .line 625
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->setUpData(Landroid/os/Bundle;)V

    .line 626
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->initFirstGuide()V

    .line 627
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->initWayPoint()V

    .line 628
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->initAudioPermission()V

    .line 629
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->initBitRate()V

    .line 630
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->checkDownloadProgress()V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 256
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->initView()V

    .line 257
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->initEvent()V

    return-void
.end method

.method public startStopRecAnimator(Z)V
    .registers 4

    const v0, 0x7f020014

    .line 1519
    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 1521
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_rec_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    if-eqz p1, :cond_1a

    .line 1523
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_rec_ly:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1524
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_24

    .line 1526
    :cond_1a
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->activity_camera_rec_ly:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1527
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :goto_24
    return-void
.end method
