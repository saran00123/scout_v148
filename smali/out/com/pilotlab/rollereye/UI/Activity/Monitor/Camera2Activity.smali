.class public Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;
.source "Camera2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$onItemCallback;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;,
        Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$VideoThread;,
        Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$AudioThread;
    }
.end annotation


# static fields
.field private static final MAINTAIN_ASPECT:Z = false

.field private static final MINIMUM_CONFIDENCE_TF_OD_API:F = 0.51f

.field private static final MODE:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;

.field private static final SAVE_PREVIEW_BITMAP:Z = false

.field private static final TEXT_SIZE_DIP:F = 10.0f

.field private static final TF_OD_API_INPUT_SIZE:I = 0x12c

.field private static final TF_OD_API_IS_QUANTIZED:Z = true

.field private static final TF_OD_API_LABELS_FILE:Ljava/lang/String; = "file:///android_asset/labelmap_2.txt"

.field private static final TF_OD_API_MODEL_FILE:Ljava/lang/String; = "detect_quant_normal.tflite"


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

.field private activity_camera_follow_btn:Landroid/widget/Button;

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

.field private activity_camera_scanview_cancel:Landroid/widget/Button;

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

.field private borderedText:Lcom/pilotlab/rollereye/tensorflow/env/BorderedText;

.field private checkDefaultWiFiDirectDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

.field private checkDownloadDisposable:Lio/reactivex/disposables/Disposable;

.field private checkVideoDispose:Lio/reactivex/disposables/Disposable;

.field private computingDetection:Z

.field private countCameraStatus:I

.field private cropCopyBitmap:Landroid/graphics/Bitmap;

.field private cropToFrameTransform:Landroid/graphics/Matrix;

.field private crop_factor_height:F

.field private crop_factor_width:F

.field private crop_height:I

.field private crop_width:I

.field private croppedBitmap:Landroid/graphics/Bitmap;

.field private defaultFrames:I

.field private detector:Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier;

.field private doubleTouch:Z

.field private editDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

.field private frameToCropTransform:Landroid/graphics/Matrix;

.field private frame_height:I

.field private frame_width:I

.field private h:I

.field private handlerStreamCover:Landroid/os/Handler;

.field private handlerTensorflow:Landroid/os/Handler;

.field private handlerThreadStreamCover:Landroid/os/HandlerThread;

.field private handlerThreadTensorflow:Landroid/os/HandlerThread;

.field private imageConverter:Ljava/lang/Runnable;

.field index_bframe:J

.field index_iframe:J

.field private isDebug:Z

.field private isDetected:Z

.field private isExit:Z

.field private isPlaying:Z

.field private isProcessingFrame:Z

.field private isTracking:Z

.field private joystick_container:Landroid/widget/RelativeLayout;

.field private lastTrackingTime:J

.field private leftControlDisposable:Lio/reactivex/disposables/Disposable;

.field private mDefaultController:Lcom/pilotlab/rollereye/Controller/DefaultController;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private motionBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;

.field private myAudioRecord:Lcom/pilotlab/ffmpeg/MyAudioRecord;

.field private myBitRate:F

.field private myCheckeStatusDisposable:Lio/reactivex/disposables/Disposable;

.field private myControlCommandDispose:Lio/reactivex/disposables/Disposable;

.field private myHandler:Landroid/os/Handler;

.field private myTrackDispose:Lio/reactivex/disposables/Disposable;

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

.field private postInferenceCallback:Ljava/lang/Runnable;

.field private pre_x:F

.field private press_flag:Z

.field protected previewHeight:I

.field protected previewWidth:I

.field private receiveFrameCount:J

.field private rgbBytes:[I

.field private rgbFrameBitmap:Landroid/graphics/Bitmap;

.field private rightControlDisposable:Lio/reactivex/disposables/Disposable;

.field private scale:F

.field private screenHeight:I

.field private screenWidth:I

.field private sensor:Landroid/hardware/Sensor;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private singleTouch:Z

.field private stop_counter:I

.field private surfaceView:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

.field private systemBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;

.field private touchMode:I

.field private touchX:F

.field private touchY:F

.field private tracker:Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;

.field trackingOverlay:Lcom/pilotlab/rollereye/tensorflow/customview/OverlayView;

.field private trackingTimeClip:J

.field private u:[B

.field private u_crop_data:[B

.field private u_len:[I

.field private v:[B

.field private v_crop_data:[B

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

.field private yRowStride:I

.field private y_crop_data:[B

.field private y_len:[I

.field private yuvBytes:[[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 292
    sget-object v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;->TF_OD_API:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;

    sput-object v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->MODE:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .line 131
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;-><init>()V

    const-string v0, "Camera2Activity"

    .line 133
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->TAG:Ljava/lang/String;

    const/16 v0, 0x800

    .line 139
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->w:I

    const/16 v0, 0x47e

    .line 140
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->h:I

    .line 141
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->w:I

    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->h:I

    mul-int v2, v0, v1

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->y:[B

    mul-int v2, v0, v1

    .line 142
    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->u:[B

    mul-int/2addr v0, v1

    .line 143
    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->v:[B

    const/4 v0, 0x1

    .line 145
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->y_len:[I

    .line 146
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->u_len:[I

    .line 147
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->v_len:[I

    const/4 v1, 0x0

    .line 149
    iput v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->frame_width:I

    .line 150
    iput v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->frame_height:I

    const-wide/16 v2, 0x0

    .line 152
    iput-wide v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->receiveFrameCount:J

    .line 153
    iput-boolean v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->begin2CheckFrame:Z

    const/16 v4, 0x1e

    .line 155
    iput v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->defaultFrames:I

    .line 157
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->videoData_Queue:Ljava/util/Queue;

    .line 159
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->audioData_Queue:Ljava/util/Queue;

    .line 161
    iput-boolean v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->isExit:Z

    const/4 v4, 0x2

    .line 162
    iput v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->NORMAL:I

    .line 163
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->MIN:I

    .line 165
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->audioNeedBuffer:Z

    .line 166
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->videoNeedBuffer:Z

    .line 202
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->wayPoint_data:Ljava/util/List;

    .line 203
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PdownloadList:Ljava/util/List;

    .line 221
    iput v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->countCameraStatus:I

    const-wide/16 v4, 0x0

    .line 224
    iput-wide v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->v_speed_1:D

    .line 225
    iput-wide v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->v_speed_2:D

    .line 226
    iput-wide v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->w_speed:D

    .line 228
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->stop_counter:I

    const/4 v6, -0x1

    .line 231
    iput v6, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->nav_status:I

    .line 232
    iput v6, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->nav_stop:I

    .line 233
    iput v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->nav_estimate:I

    .line 235
    iput v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->touchMode:I

    .line 238
    iput-wide v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->nLenStart:D

    .line 239
    iput-boolean v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->doubleTouch:Z

    .line 240
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->singleTouch:Z

    .line 246
    iput-wide v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->index_iframe:J

    .line 247
    iput-wide v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->index_bframe:J

    .line 250
    iput-boolean v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->isPlaying:Z

    const/4 v0, 0x0

    .line 255
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myBitRate:F

    .line 264
    iput v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewWidth:I

    .line 265
    iput v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewHeight:I

    .line 266
    iput-boolean v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->isProcessingFrame:Z

    const/4 v0, 0x0

    .line 267
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->rgbBytes:[I

    const/4 v2, 0x3

    .line 271
    new-array v2, v2, [[B

    iput-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->yuvBytes:[[B

    .line 281
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->rgbFrameBitmap:Landroid/graphics/Bitmap;

    .line 282
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->croppedBitmap:Landroid/graphics/Bitmap;

    .line 283
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->cropCopyBitmap:Landroid/graphics/Bitmap;

    .line 288
    iput-boolean v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->isDebug:Z

    .line 289
    iput-boolean v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->computingDetection:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 293
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->scale:F

    const v2, 0x3f19999a    # 0.6f

    .line 298
    iput v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->crop_factor_width:F

    .line 299
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->crop_factor_height:F

    .line 302
    iput-boolean v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->isTracking:Z

    const-wide/16 v2, 0x96

    .line 304
    iput-wide v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->trackingTimeClip:J

    const-wide/16 v2, -0x1

    .line 305
    iput-wide v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->lastTrackingTime:J

    .line 306
    iput-boolean v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->isDetected:Z

    return-void
.end method

.method private ScaleViewPort(II)V
    .registers 10

    .line 1805
    invoke-static {p0}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->getTruelyWidthPx(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->mScreenWidth:I

    .line 1806
    invoke-static {p0}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->getTruelyHeightPx(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->mScreenHeight:I

    .line 1807
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScreenWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->mScreenWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mScreenHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->mScreenHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->mScreenWidth:I

    int-to-float v0, v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->scale:F

    .line 1810
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->scale:F

    mul-float/2addr v1, v0

    float-to-int v1, v1

    int-to-float v2, p2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    .line 1812
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->surfaceView:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    invoke-virtual {v2, p1, p2}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->updateRenderWidthHeight(II)V

    const v2, 0x7f0a055a

    .line 1814
    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1815
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1816
    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1817
    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f0a05b3

    .line 1825
    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    int-to-float v5, v1

    .line 1826
    iget v6, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->crop_factor_width:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v0

    .line 1827
    iget v6, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->crop_factor_height:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1828
    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1830
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "param1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1832
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->frame_width:I

    .line 1833
    iput p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->frame_height:I

    .line 1836
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Width:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -Height:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scale:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->scale:F

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "neww:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -newh:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;II)V
    .registers 3

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->ScaleViewPort(II)V

    return-void
.end method

.method static synthetic access$1000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Z
    .registers 1

    .line 131
    iget-boolean p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->isTracking:Z

    return p0
.end method

.method static synthetic access$10000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->detector:Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier;

    return-object p0
.end method

.method static synthetic access$10100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Landroid/graphics/Bitmap;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->cropCopyBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$10102(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->cropCopyBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$102(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;I)I
    .registers 2

    .line 131
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->screenHeight:I

    return p1
.end method

.method static synthetic access$10200()Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;
    .registers 1

    .line 131
    sget-object v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->MODE:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;

    return-object v0
.end method

.method static synthetic access$10300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Landroid/graphics/Matrix;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->cropToFrameTransform:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$10400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Landroid/graphics/RectF;)V
    .registers 2

    .line 131
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->scoutTrackingCommand(Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic access$10502(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Z)Z
    .registers 2

    .line 131
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->computingDetection:Z

    return p1
.end method

.method static synthetic access$10600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Landroid/graphics/RectF;)V
    .registers 2

    .line 131
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->scoutTrackingCropCommand(Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;[B[B[B)V
    .registers 4

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->tensorflowTracking_crop([B[B[B)V

    return-void
.end method

.method static synthetic access$1200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Landroid/widget/TextView;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_tips:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)I
    .registers 1

    .line 131
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->nav_status:I

    return p0
.end method

.method static synthetic access$1400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)I
    .registers 1

    .line 131
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->nav_estimate:I

    return p0
.end method

.method static synthetic access$1500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)D
    .registers 3

    .line 131
    iget-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->v_speed_1:D

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;D)D
    .registers 3

    .line 131
    iput-wide p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->v_speed_1:D

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)D
    .registers 3

    .line 131
    iget-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->v_speed_2:D

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;D)D
    .registers 3

    .line 131
    iput-wide p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->v_speed_2:D

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Ljava/lang/String;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lio/reactivex/disposables/Disposable;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->leftControlDisposable:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->leftControlDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)D
    .registers 3

    .line 131
    iget-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->w_speed:D

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;D)D
    .registers 3

    .line 131
    iput-wide p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->w_speed:D

    return-wide p1
.end method

.method static synthetic access$2000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lio/reactivex/disposables/Disposable;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->rightControlDisposable:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->rightControlDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$202(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;I)I
    .registers 2

    .line 131
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->screenWidth:I

    return p1
.end method

.method static synthetic access$2100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)F
    .registers 1

    .line 131
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->touchX:F

    return p0
.end method

.method static synthetic access$2102(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;F)F
    .registers 2

    .line 131
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->touchX:F

    return p1
.end method

.method static synthetic access$2200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)F
    .registers 1

    .line 131
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->touchY:F

    return p0
.end method

.method static synthetic access$2202(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;F)F
    .registers 2

    .line 131
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->touchY:F

    return p1
.end method

.method static synthetic access$2300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)I
    .registers 1

    .line 131
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->touchMode:I

    return p0
.end method

.method static synthetic access$2302(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;I)I
    .registers 2

    .line 131
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->touchMode:I

    return p1
.end method

.method static synthetic access$2400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)F
    .registers 1

    .line 131
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->oldDist:F

    return p0
.end method

.method static synthetic access$2402(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;F)F
    .registers 2

    .line 131
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->oldDist:F

    return p1
.end method

.method static synthetic access$2500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Landroid/view/MotionEvent;)F
    .registers 2

    .line 131
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->spacing(Landroid/view/MotionEvent;)F

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;F)V
    .registers 2

    .line 131
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->zoom(F)V

    return-void
.end method

.method static synthetic access$2700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/CustomerView/WayPointView;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    return-object p0
.end method

.method static synthetic access$2802(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myControlCommandDispose:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)[B
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->y:[B

    return-object p0
.end method

.method static synthetic access$3000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->motionBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)I
    .registers 1

    .line 131
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->stop_counter:I

    return p0
.end method

.method static synthetic access$3402(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;I)I
    .registers 2

    .line 131
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->stop_counter:I

    return p1
.end method

.method static synthetic access$3408(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)I
    .registers 3

    .line 131
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->stop_counter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->stop_counter:I

    return v0
.end method

.method static synthetic access$3500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$3602(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myWayPointDispose:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$3902(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->checkVideoDispose:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)[I
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->y_len:[I

    return-object p0
.end method

.method static synthetic access$4000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Z
    .registers 1

    .line 131
    iget-boolean p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->begin2CheckFrame:Z

    return p0
.end method

.method static synthetic access$4100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)I
    .registers 1

    .line 131
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->defaultFrames:I

    return p0
.end method

.method static synthetic access$4200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)J
    .registers 3

    .line 131
    iget-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->receiveFrameCount:J

    return-wide v0
.end method

.method static synthetic access$4202(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;J)J
    .registers 3

    .line 131
    iput-wide p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->receiveFrameCount:J

    return-wide p1
.end method

.method static synthetic access$4300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)I
    .registers 1

    .line 131
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->frame_width:I

    return p0
.end method

.method static synthetic access$4400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)I
    .registers 1

    .line 131
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->frame_height:I

    return p0
.end method

.method static synthetic access$4500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;II)V
    .registers 3

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->reduceResolution(II)V

    return-void
.end method

.method static synthetic access$4600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$4902(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myCheckeStatusDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)[B
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->u:[B

    return-object p0
.end method

.method static synthetic access$5000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Z)V
    .registers 2

    .line 131
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->enableStatusButton(Z)V

    return-void
.end method

.method static synthetic access$5300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Landroid/widget/Button;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_mic_btn:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$5402(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->checkDownloadDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Ljava/util/List;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PdownloadList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$5602(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->bitRateDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$5700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)F
    .registers 1

    .line 131
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myBitRate:F

    return p0
.end method

.method static synthetic access$5702(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;F)F
    .registers 2

    .line 131
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myBitRate:F

    return p1
.end method

.method static synthetic access$5800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Landroid/widget/TextView;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_tv_bitRate:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V
    .registers 1

    .line 131
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->cancelNav()V

    return-void
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)[I
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->u_len:[I

    return-object p0
.end method

.method static synthetic access$6002(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myTrackDispose:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)J
    .registers 3

    .line 131
    iget-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->lastTrackingTime:J

    return-wide v0
.end method

.method static synthetic access$6102(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;J)J
    .registers 3

    .line 131
    iput-wide p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->lastTrackingTime:J

    return-wide p1
.end method

.method static synthetic access$6200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)J
    .registers 3

    .line 131
    iget-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->trackingTimeClip:J

    return-wide v0
.end method

.method static synthetic access$6300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Z
    .registers 1

    .line 131
    iget-boolean p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->isDetected:Z

    return p0
.end method

.method static synthetic access$6302(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Z)Z
    .registers 2

    .line 131
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->isDetected:Z

    return p1
.end method

.method static synthetic access$6400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->tracker:Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/CustomerView/ScanView;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_scanview:Lcom/pilotlab/rollereye/CustomerView/ScanView;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Landroid/view/View;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_blackCover:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$6700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Landroid/widget/Button;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_takephoto_btn:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Ljava/lang/String;)V
    .registers 2

    .line 131
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->startNav(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V
    .registers 1

    .line 131
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->goOutCharge()V

    return-void
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)[B
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->v:[B

    return-object p0
.end method

.method static synthetic access$7000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->editDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    return-object p0
.end method

.method static synthetic access$7100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Landroid/os/Handler;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$7200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Ljava/util/List;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->wayPoint_data:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$7300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$7400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$7500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$7600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->wayPointListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;

    return-object p0
.end method

.method static synthetic access$7700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$7800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$7900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V
    .registers 1

    .line 131
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->saveWayPoint()V

    return-void
.end method

.method static synthetic access$800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)[I
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->v_len:[I

    return-object p0
.end method

.method static synthetic access$8000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Z
    .registers 1

    .line 131
    iget-boolean p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->isExit:Z

    return p0
.end method

.method static synthetic access$8100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Z
    .registers 1

    .line 131
    iget-boolean p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->isPlaying:Z

    return p0
.end method

.method static synthetic access$8200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Ljava/util/Queue;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->audioData_Queue:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$8300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)I
    .registers 1

    .line 131
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->NORMAL:I

    return p0
.end method

.method static synthetic access$8400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)I
    .registers 1

    .line 131
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->MIN:I

    return p0
.end method

.method static synthetic access$8500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)J
    .registers 3

    .line 131
    iget-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->audioTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$8502(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;J)J
    .registers 3

    .line 131
    iput-wide p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->audioTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$8600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/ffmpeg/AudioDecoder;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->audioDecoder:Lcom/pilotlab/ffmpeg/AudioDecoder;

    return-object p0
.end method

.method static synthetic access$8700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)J
    .registers 3

    .line 131
    iget-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->videoTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$8702(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;J)J
    .registers 3

    .line 131
    iput-wide p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->videoTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$8800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Z
    .registers 1

    .line 131
    iget-boolean p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->videoNeedBuffer:Z

    return p0
.end method

.method static synthetic access$8802(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Z)Z
    .registers 2

    .line 131
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->videoNeedBuffer:Z

    return p1
.end method

.method static synthetic access$8900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Ljava/util/Queue;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->videoData_Queue:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->surfaceView:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    return-object p0
.end method

.method static synthetic access$9000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/ffmpeg/ffmpeg;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    return-object p0
.end method

.method static synthetic access$9100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)[I
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->rgbBytes:[I

    return-object p0
.end method

.method static synthetic access$9202(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Z)Z
    .registers 2

    .line 131
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->isProcessingFrame:Z

    return p1
.end method

.method static synthetic access$9300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;[B[B[B)V
    .registers 4

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->cropYUV([B[B[B)V

    return-void
.end method

.method static synthetic access$9400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)[B
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->y_crop_data:[B

    return-object p0
.end method

.method static synthetic access$9500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)[B
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->u_crop_data:[B

    return-object p0
.end method

.method static synthetic access$9600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)[B
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->v_crop_data:[B

    return-object p0
.end method

.method static synthetic access$9700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)F
    .registers 1

    .line 131
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->scale:F

    return p0
.end method

.method static synthetic access$9800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Z
    .registers 1

    .line 131
    iget-boolean p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->isDebug:Z

    return p0
.end method

.method static synthetic access$9900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Landroid/graphics/Bitmap;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->croppedBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private cancelDialogNav()V
    .registers 8

    const v0, 0x7f11033c

    .line 2007
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f11003e

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$20;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$20;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    const v0, 0x7f110007

    .line 2013
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$21;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$21;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    move-object v1, p0

    .line 2007
    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    .line 2018
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void
.end method

.method private cancelFollow()V
    .registers 4

    const/4 v0, 0x0

    .line 2094
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->isTracking:Z

    .line 2096
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_scanview:Lcom/pilotlab/rollereye/CustomerView/ScanView;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/CustomerView/ScanView;->stopAnimation()V

    .line 2097
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_scan_layout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2098
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_follow_btn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 2099
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_detect_btn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 2100
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_27

    .line 2101
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_stop_btn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2c

    .line 2103
    :cond_27
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_btn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 2104
    :goto_2c
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->tracker:Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;

    if-eqz v0, :cond_33

    .line 2105
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->clearData()V

    .line 2106
    :cond_33
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->trackingOverlay:Lcom/pilotlab/rollereye/tensorflow/customview/OverlayView;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/tensorflow/customview/OverlayView;->postInvalidate()V

    .line 2107
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->trackingOverlay:Lcom/pilotlab/rollereye/tensorflow/customview/OverlayView;

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/tensorflow/customview/OverlayView;->setVisibility(I)V

    .line 2109
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myTrackDispose:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_44

    .line 2110
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2112
    :cond_44
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->handlerThreadTensorflow:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_5a

    .line 2113
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2115
    :try_start_4c
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->handlerThreadTensorflow:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 2116
    iput-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->handlerThreadTensorflow:Landroid/os/HandlerThread;

    .line 2117
    iput-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->handlerTensorflow:Landroid/os/Handler;
    :try_end_55
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_55} :catch_56

    goto :goto_5a

    :catch_56
    move-exception v0

    .line 2119
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2122
    :cond_5a
    :goto_5a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->handlerThreadStreamCover:Landroid/os/HandlerThread;

    if-eqz v0, :cond_6f

    .line 2123
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2125
    :try_start_61
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->handlerThreadStreamCover:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 2126
    iput-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->handlerThreadStreamCover:Landroid/os/HandlerThread;

    .line 2127
    iput-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->handlerStreamCover:Landroid/os/Handler;
    :try_end_6a
    .catch Ljava/lang/InterruptedException; {:try_start_61 .. :try_end_6a} :catch_6b

    goto :goto_6f

    :catch_6b
    move-exception v0

    .line 2129
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_6f
    :goto_6f
    return-void
.end method

.method private cancelNav()V
    .registers 6

    .line 2393
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_CANCEL:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 2394
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_17

    .line 2395
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

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

    .line 1677
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

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$18;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$18;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private checkShowBaseLine()V
    .registers 3

    .line 1260
    invoke-static {p0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getShowBaseLine(Landroid/content/Context;)Z

    move-result v0

    .line 1261
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_scaleview_ry:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_c

    :cond_a
    const/16 v0, 0x8

    :goto_c
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1262
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_scaleview_scaleview:Lcom/pilotlab/rollereye/CustomerView/ScaleView;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/ScaleView;->invalidate()V

    return-void
.end method

.method private checkShowBitRate()V
    .registers 3

    .line 1255
    invoke-static {p0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getShowBitRate(Landroid/content/Context;)Z

    move-result v0

    .line 1256
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_bitRate_ry:Landroid/widget/RelativeLayout;

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

    .line 1301
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

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$11;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$11;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private checkSystemVer()V
    .registers 6

    .line 1178
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SYSTEM_GET_PARAM:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 1179
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1181
    :try_start_7
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "system"

    .line 1182
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "motion"

    .line 1183
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "groups"

    .line 1184
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception v2

    .line 1186
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1188
    :goto_20
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1189
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v3, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v4, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_3c
    return-void
.end method

.method private checkVideoAutoAdjust(I)V
    .registers 5

    .line 1210
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->checkVideoDispose:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_7

    .line 1211
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_7
    const/4 v0, 0x0

    .line 1214
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->begin2CheckFrame:Z

    const-wide/16 v0, 0x0

    .line 1216
    iput-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->receiveFrameCount:J

    int-to-long v0, p1

    .line 1218
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

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$8;

    invoke-direct {v1, p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$8;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private checkWiFiDirect()V
    .registers 6

    .line 1194
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object v0

    sget-object v1, Lcom/pilotlab/rollereye/Bean/ConnectMode;->WIFIDIRECT:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne v0, v1, :cond_39

    .line 1195
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEVICE_SN:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 1196
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_13
    const-string v2, "userID"

    .line 1198
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

    .line 1200
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1202
    :goto_25
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v2, :cond_39

    .line 1203
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

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

    .line 2449
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myWayPointDispose:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_7

    .line 2450
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2452
    :cond_7
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_42

    .line 2453
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_stop_btn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2454
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_favorite_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2455
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_btn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2456
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2e

    .line 2457
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->setVisibility(I)V

    .line 2458
    :cond_2e
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2459
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view_close:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2460
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view_open:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2461
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->clear()V

    :cond_42
    return-void
.end method

.method private closeWayPointMenu()V
    .registers 4

    .line 2066
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_btn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 2067
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_follow_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2068
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_detect_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2069
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_mic_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2070
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_speaker_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2071
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_record_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2072
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_takephoto_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2073
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_layout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2074
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->wayPointListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->setEdit(Z)V

    return-void
.end method

.method private closeWayPointView()V
    .registers 4

    .line 2056
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->setVisibility(I)V

    .line 2057
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view_open:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2058
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view_close:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2059
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->resetScaleTranslate()V

    return-void
.end method

.method private cropYUV([B[B[B)V
    .registers 14

    .line 2663
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->screenWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->crop_factor_width:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->crop_width:I

    .line 2664
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->screenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->crop_factor_height:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->crop_height:I

    .line 2667
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    array-length v1, p3

    add-int/2addr v0, v1

    new-array v1, v0, [B

    .line 2668
    array-length v0, p1

    const/4 v9, 0x0

    invoke-static {p1, v9, v1, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2669
    array-length p1, p1

    add-int/2addr p1, v9

    .line 2670
    array-length v0, p2

    invoke-static {p2, v9, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2671
    array-length p2, p2

    add-int/2addr p1, p2

    .line 2672
    array-length p2, p3

    invoke-static {p3, v9, v1, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2674
    iget v6, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->crop_height:I

    iget v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->crop_width:I

    mul-int p1, v6, v5

    mul-int p2, v6, v5

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    new-array p1, p1, [B

    .line 2676
    iget v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->screenWidth:I

    iget v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->screenHeight:I

    sub-int p2, v2, v5

    div-int/lit8 v7, p2, 0x2

    sub-int p2, v3, v6

    div-int/lit8 v8, p2, 0x2

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Lcom/pilotlab/libyuv/YuvUtil;->CropYuvI420([BII[BIIII)V

    .line 2678
    iget p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->crop_height:I

    iget p3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->crop_width:I

    mul-int v0, p2, p3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->y_crop_data:[B

    mul-int v0, p2, p3

    .line 2679
    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->u_crop_data:[B

    mul-int/2addr p2, p3

    .line 2680
    div-int/lit8 p2, p2, 0x4

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->v_crop_data:[B

    .line 2682
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->y_crop_data:[B

    array-length p3, p2

    invoke-static {p1, v9, p2, v9, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2683
    iget p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->crop_height:I

    iget p3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->crop_width:I

    mul-int/2addr p2, p3

    iget-object p3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->u_crop_data:[B

    array-length v0, p3

    invoke-static {p1, p2, p3, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2684
    iget p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->crop_height:I

    iget p3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->crop_width:I

    mul-int v0, p2, p3

    mul-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x4

    add-int/2addr v0, p2

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->v_crop_data:[B

    array-length p3, p2

    invoke-static {p1, v0, p2, v9, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

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

    .line 2492
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110250

    .line 2493
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const v1, 0x7f0d0082

    const/4 v2, 0x0

    .line 2494
    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a027c

    .line 2495
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 2496
    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    .line 2497
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2498
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_3b

    .line 2499
    invoke-static {p0}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->getTruelyHeightPx(Landroid/content/Context;)I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2500
    :cond_3b
    new-instance v3, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;

    invoke-direct {v3, p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 2501
    invoke-virtual {v3}, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;->getmSeleted()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2502
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2503
    new-instance p2, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$34;

    invoke-direct {p2, p0, v3, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$34;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;Ljava/util/List;)V

    invoke-virtual {v2, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2511
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const p1, 0x7f11003e

    .line 2512
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$35;

    invoke-direct {p2, p0, v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$35;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;)V

    invoke-virtual {v0, p1, p2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const p1, 0x7f110007

    .line 2524
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$36;

    invoke-direct {p2, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$36;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    invoke-virtual {v0, p1, p2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 2530
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void
.end method

.method private enableStatusButton(Z)V
    .registers 3

    .line 930
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_takephoto_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 931
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_record_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 932
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_mic_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 933
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_follow_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 934
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_detect_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 935
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 936
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_speaker_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    if-nez p1, :cond_2f

    .line 938
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_out_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 939
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_go_home_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2f
    return-void
.end method

.method private goBackCharge()V
    .registers 6

    .line 2030
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_BACK:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 2031
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_17

    .line 2032
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

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

    .line 2022
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_OUT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 2023
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_17

    .line 2024
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

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

    .line 1335
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const/4 v1, 0x1

    .line 1336
    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->setLogging(Z)V

    const-string v1, "android.permission.RECORD_AUDIO"

    .line 1337
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->request([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$12;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$12;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    .line 1338
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private initBitRate()V
    .registers 4

    .line 1843
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

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$19;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$19;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private initControlCommand()V
    .registers 4

    .line 780
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

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$5;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$5;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private initFirstGuide()V
    .registers 7

    .line 874
    new-instance v0, Lcom/app/hubert/guide/model/HighlightOptions$Builder;

    invoke-direct {v0}, Lcom/app/hubert/guide/model/HighlightOptions$Builder;-><init>()V

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$7;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$7;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    .line 875
    invoke-virtual {v0, v1}, Lcom/app/hubert/guide/model/HighlightOptions$Builder;->setOnHighlightDrewListener(Lcom/app/hubert/guide/listener/OnHighlightDrewListener;)Lcom/app/hubert/guide/model/HighlightOptions$Builder;

    move-result-object v0

    .line 886
    invoke-virtual {v0}, Lcom/app/hubert/guide/model/HighlightOptions$Builder;->build()Lcom/app/hubert/guide/model/HighlightOptions;

    move-result-object v0

    .line 887
    invoke-static {p0}, Lcom/app/hubert/guide/NewbieGuide;->with(Landroid/app/Activity;)Lcom/app/hubert/guide/core/Builder;

    move-result-object v1

    const-string v2, "Camera"

    .line 888
    invoke-virtual {v1, v2}, Lcom/app/hubert/guide/core/Builder;->setLabel(Ljava/lang/String;)Lcom/app/hubert/guide/core/Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 889
    invoke-virtual {v1, v2}, Lcom/app/hubert/guide/core/Builder;->alwaysShow(Z)Lcom/app/hubert/guide/core/Builder;

    move-result-object v1

    .line 890
    invoke-static {}, Lcom/app/hubert/guide/model/GuidePage;->newInstance()Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_out_btn:Landroid/widget/Button;

    sget-object v5, Lcom/app/hubert/guide/model/HighLight$Shape;->CIRCLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    .line 891
    invoke-virtual {v3, v4, v5, v0}, Lcom/app/hubert/guide/model/GuidePage;->addHighLightWithOptions(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;Lcom/app/hubert/guide/model/HighlightOptions;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    new-array v4, v2, [I

    const v5, 0x7f0d0141

    invoke-virtual {v3, v5, v4}, Lcom/app/hubert/guide/model/GuidePage;->setLayoutRes(I[I)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    .line 890
    invoke-virtual {v1, v3}, Lcom/app/hubert/guide/core/Builder;->addGuidePage(Lcom/app/hubert/guide/model/GuidePage;)Lcom/app/hubert/guide/core/Builder;

    move-result-object v1

    .line 892
    invoke-static {}, Lcom/app/hubert/guide/model/GuidePage;->newInstance()Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_go_home_btn:Landroid/widget/Button;

    sget-object v5, Lcom/app/hubert/guide/model/HighLight$Shape;->CIRCLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    .line 893
    invoke-virtual {v3, v4, v5, v0}, Lcom/app/hubert/guide/model/GuidePage;->addHighLightWithOptions(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;Lcom/app/hubert/guide/model/HighlightOptions;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    new-array v4, v2, [I

    const v5, 0x7f0d0140

    invoke-virtual {v3, v5, v4}, Lcom/app/hubert/guide/model/GuidePage;->setLayoutRes(I[I)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    .line 892
    invoke-virtual {v1, v3}, Lcom/app/hubert/guide/core/Builder;->addGuidePage(Lcom/app/hubert/guide/model/GuidePage;)Lcom/app/hubert/guide/core/Builder;

    move-result-object v1

    .line 894
    invoke-static {}, Lcom/app/hubert/guide/model/GuidePage;->newInstance()Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_detect_btn:Landroid/widget/Button;

    sget-object v5, Lcom/app/hubert/guide/model/HighLight$Shape;->CIRCLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    .line 895
    invoke-virtual {v3, v4, v5, v0}, Lcom/app/hubert/guide/model/GuidePage;->addHighLightWithOptions(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;Lcom/app/hubert/guide/model/HighlightOptions;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    new-array v4, v2, [I

    const v5, 0x7f0d013f

    invoke-virtual {v3, v5, v4}, Lcom/app/hubert/guide/model/GuidePage;->setLayoutRes(I[I)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    .line 894
    invoke-virtual {v1, v3}, Lcom/app/hubert/guide/core/Builder;->addGuidePage(Lcom/app/hubert/guide/model/GuidePage;)Lcom/app/hubert/guide/core/Builder;

    move-result-object v1

    .line 896
    invoke-static {}, Lcom/app/hubert/guide/model/GuidePage;->newInstance()Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_follow_btn:Landroid/widget/Button;

    sget-object v5, Lcom/app/hubert/guide/model/HighLight$Shape;->CIRCLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    .line 897
    invoke-virtual {v3, v4, v5, v0}, Lcom/app/hubert/guide/model/GuidePage;->addHighLightWithOptions(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;Lcom/app/hubert/guide/model/HighlightOptions;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    new-array v4, v2, [I

    const v5, 0x7f0d0147

    invoke-virtual {v3, v5, v4}, Lcom/app/hubert/guide/model/GuidePage;->setLayoutRes(I[I)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    .line 896
    invoke-virtual {v1, v3}, Lcom/app/hubert/guide/core/Builder;->addGuidePage(Lcom/app/hubert/guide/model/GuidePage;)Lcom/app/hubert/guide/core/Builder;

    move-result-object v1

    .line 898
    invoke-static {}, Lcom/app/hubert/guide/model/GuidePage;->newInstance()Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_btn:Landroid/widget/Button;

    sget-object v5, Lcom/app/hubert/guide/model/HighLight$Shape;->CIRCLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    .line 899
    invoke-virtual {v3, v4, v5, v0}, Lcom/app/hubert/guide/model/GuidePage;->addHighLightWithOptions(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;Lcom/app/hubert/guide/model/HighlightOptions;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    new-array v4, v2, [I

    const v5, 0x7f0d0149

    invoke-virtual {v3, v5, v4}, Lcom/app/hubert/guide/model/GuidePage;->setLayoutRes(I[I)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    .line 898
    invoke-virtual {v1, v3}, Lcom/app/hubert/guide/core/Builder;->addGuidePage(Lcom/app/hubert/guide/model/GuidePage;)Lcom/app/hubert/guide/core/Builder;

    move-result-object v1

    .line 900
    invoke-static {}, Lcom/app/hubert/guide/model/GuidePage;->newInstance()Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_mic_btn:Landroid/widget/Button;

    sget-object v5, Lcom/app/hubert/guide/model/HighLight$Shape;->CIRCLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    .line 901
    invoke-virtual {v3, v4, v5, v0}, Lcom/app/hubert/guide/model/GuidePage;->addHighLightWithOptions(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;Lcom/app/hubert/guide/model/HighlightOptions;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    new-array v4, v2, [I

    const v5, 0x7f0d0142

    invoke-virtual {v3, v5, v4}, Lcom/app/hubert/guide/model/GuidePage;->setLayoutRes(I[I)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    .line 900
    invoke-virtual {v1, v3}, Lcom/app/hubert/guide/core/Builder;->addGuidePage(Lcom/app/hubert/guide/model/GuidePage;)Lcom/app/hubert/guide/core/Builder;

    move-result-object v1

    .line 902
    invoke-static {}, Lcom/app/hubert/guide/model/GuidePage;->newInstance()Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_speaker_btn:Landroid/widget/Button;

    sget-object v5, Lcom/app/hubert/guide/model/HighLight$Shape;->CIRCLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    .line 903
    invoke-virtual {v3, v4, v5, v0}, Lcom/app/hubert/guide/model/GuidePage;->addHighLightWithOptions(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;Lcom/app/hubert/guide/model/HighlightOptions;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    new-array v4, v2, [I

    const v5, 0x7f0d0148

    invoke-virtual {v3, v5, v4}, Lcom/app/hubert/guide/model/GuidePage;->setLayoutRes(I[I)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    .line 902
    invoke-virtual {v1, v3}, Lcom/app/hubert/guide/core/Builder;->addGuidePage(Lcom/app/hubert/guide/model/GuidePage;)Lcom/app/hubert/guide/core/Builder;

    move-result-object v1

    .line 904
    invoke-static {}, Lcom/app/hubert/guide/model/GuidePage;->newInstance()Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_record_btn:Landroid/widget/Button;

    sget-object v5, Lcom/app/hubert/guide/model/HighLight$Shape;->CIRCLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    .line 905
    invoke-virtual {v3, v4, v5, v0}, Lcom/app/hubert/guide/model/GuidePage;->addHighLightWithOptions(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;Lcom/app/hubert/guide/model/HighlightOptions;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    new-array v4, v2, [I

    const v5, 0x7f0d0143

    invoke-virtual {v3, v5, v4}, Lcom/app/hubert/guide/model/GuidePage;->setLayoutRes(I[I)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    .line 904
    invoke-virtual {v1, v3}, Lcom/app/hubert/guide/core/Builder;->addGuidePage(Lcom/app/hubert/guide/model/GuidePage;)Lcom/app/hubert/guide/core/Builder;

    move-result-object v1

    .line 906
    invoke-static {}, Lcom/app/hubert/guide/model/GuidePage;->newInstance()Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v3

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_takephoto_btn:Landroid/widget/Button;

    sget-object v5, Lcom/app/hubert/guide/model/HighLight$Shape;->CIRCLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    .line 907
    invoke-virtual {v3, v4, v5, v0}, Lcom/app/hubert/guide/model/GuidePage;->addHighLightWithOptions(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;Lcom/app/hubert/guide/model/HighlightOptions;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v0

    new-array v3, v2, [I

    const v4, 0x7f0d0146

    invoke-virtual {v0, v4, v3}, Lcom/app/hubert/guide/model/GuidePage;->setLayoutRes(I[I)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v0

    .line 906
    invoke-virtual {v1, v0}, Lcom/app/hubert/guide/core/Builder;->addGuidePage(Lcom/app/hubert/guide/model/GuidePage;)Lcom/app/hubert/guide/core/Builder;

    move-result-object v0

    .line 908
    invoke-static {}, Lcom/app/hubert/guide/model/GuidePage;->newInstance()Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v1

    new-array v2, v2, [I

    const v3, 0x7f0d013d

    invoke-virtual {v1, v3, v2}, Lcom/app/hubert/guide/model/GuidePage;->setLayoutRes(I[I)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/app/hubert/guide/core/Builder;->addGuidePage(Lcom/app/hubert/guide/model/GuidePage;)Lcom/app/hubert/guide/core/Builder;

    move-result-object v0

    .line 909
    invoke-virtual {v0}, Lcom/app/hubert/guide/core/Builder;->show()Lcom/app/hubert/guide/core/Controller;

    return-void
.end method

.method private initPlayer()V
    .registers 4

    .line 1104
    new-instance v0, Lcom/pilotlab/ffmpeg/ffmpeg;

    invoke-direct {v0}, Lcom/pilotlab/ffmpeg/ffmpeg;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    .line 1105
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->w:I

    iget v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->h:I

    invoke-virtual {v0, v1, v2}, Lcom/pilotlab/ffmpeg/ffmpeg;->DecoderInit(II)I

    .line 1106
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

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

.method private initSernsor()V
    .registers 3

    const-string v0, "sensor"

    .line 752
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->sensorManager:Landroid/hardware/SensorManager;

    .line 753
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->sensor:Landroid/hardware/Sensor;

    return-void
.end method

.method private initTracking()V
    .registers 2

    const/4 v0, 0x0

    .line 1098
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->isTracking:Z

    const/4 v0, 0x0

    .line 1099
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->rgbBytes:[I

    return-void
.end method

.method private initVoice()V
    .registers 4

    .line 1110
    new-instance v0, Lcom/pilotlab/ffmpeg/MyAudioRecord;

    const/16 v1, 0x3e80

    invoke-direct {v0, v1}, Lcom/pilotlab/ffmpeg/MyAudioRecord;-><init>(I)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myAudioRecord:Lcom/pilotlab/ffmpeg/MyAudioRecord;

    .line 1111
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myAudioRecord:Lcom/pilotlab/ffmpeg/MyAudioRecord;

    invoke-virtual {v0}, Lcom/pilotlab/ffmpeg/MyAudioRecord;->startVoip()V

    .line 1112
    new-instance v0, Lcom/pilotlab/ffmpeg/AudioDecoder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myAudioRecord:Lcom/pilotlab/ffmpeg/MyAudioRecord;

    invoke-direct {v0, v1}, Lcom/pilotlab/ffmpeg/AudioDecoder;-><init>(Lcom/pilotlab/ffmpeg/MyAudioRecord;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->audioDecoder:Lcom/pilotlab/ffmpeg/AudioDecoder;

    .line 1113
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->audioDecoder:Lcom/pilotlab/ffmpeg/AudioDecoder;

    invoke-virtual {v0}, Lcom/pilotlab/ffmpeg/AudioDecoder;->prepare()Z

    const/4 v0, 0x0

    .line 1114
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->isExit:Z

    .line 1115
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$AudioThread;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$AudioThread;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    const-string v2, "Audio Thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->audioFramePlay:Ljava/lang/Thread;

    .line 1117
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->audioFramePlay:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private initWayPoint()V
    .registers 4

    .line 773
    new-instance v0, Lcom/pilotlab/rollereye/Bean/WayPointBean;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/Bean/WayPointBean;-><init>()V

    .line 774
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->wayPoint_data:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 775
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->wayPointListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->updateUI()V

    return-void
.end method

.method private initWayPointDrwaLine()V
    .registers 4

    .line 824
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

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$6;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$6;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private openSlamView()V
    .registers 3

    .line 2441
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_btn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2442
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_stop_btn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2443
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2444
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->openWayPointView()V

    .line 2445
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->initWayPointDrwaLine()V

    return-void
.end method

.method private openWayPointView()V
    .registers 4

    .line 2047
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->setVisibility(I)V

    .line 2048
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view_open:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2049
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view_close:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method private queryWayPointList()V
    .registers 6

    .line 2037
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_LIST:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 2038
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_17

    .line 2039
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

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

    .line 1645
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myWiFiDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_c

    .line 1646
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myWiFiDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1647
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getConnectStatus()V

    .line 1649
    :cond_c
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myCheckeStatusDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_16

    .line 1650
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1651
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->checkStauts()V

    :cond_16
    return-void
.end method

.method private reduceResolution(II)V
    .registers 10

    .line 1269
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->checkVideoDispose:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_7

    .line 1270
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_7
    const v0, 0x7f110339

    .line 1273
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f110071

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$9;

    invoke-direct {v4, p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$9;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;II)V

    const p1, 0x7f11003a

    .line 1289
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$10;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$10;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    move-object v1, p0

    .line 1273
    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 1294
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void
.end method

.method private registerSensor()V
    .registers 4

    .line 1091
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->sensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_c

    const/4 v2, 0x2

    .line 1092
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_c
    return-void
.end method

.method private releasePlayer()V
    .registers 2

    .line 1164
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    invoke-virtual {v0}, Lcom/pilotlab/ffmpeg/ffmpeg;->DecoderRelease()I

    const/4 v0, 0x0

    .line 1165
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    return-void
.end method

.method private releaseVoice()V
    .registers 3

    const/4 v0, 0x1

    .line 1170
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->isExit:Z

    const/4 v0, 0x0

    .line 1171
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->isPlaying:Z

    .line 1172
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->audioDecoder:Lcom/pilotlab/ffmpeg/AudioDecoder;

    invoke-virtual {v1}, Lcom/pilotlab/ffmpeg/AudioDecoder;->release()V

    .line 1173
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myAudioRecord:Lcom/pilotlab/ffmpeg/MyAudioRecord;

    invoke-virtual {v1}, Lcom/pilotlab/ffmpeg/MyAudioRecord;->destroy()Z

    .line 1174
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_speaker_btn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setSelected(Z)V

    return-void
.end method

.method private saveWayPoint()V
    .registers 9

    .line 2405
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    const/4 v1, 0x1

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getPatrol()I

    move-result v0

    if-ne v0, v1, :cond_3b

    const v0, 0x7f110345

    .line 2406
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f11003e

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$31;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$31;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    .line 2411
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void

    .line 2415
    :cond_3b
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->getCurrentLocation()[F

    move-result-object v0

    const/4 v2, 0x0

    .line 2416
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

    .line 2417
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_SAVE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 2418
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_a6

    .line 2419
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

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

    .line 2422
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f110071

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$32;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$32;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    const v0, 0x7f11003a

    .line 2431
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$33;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$33;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    move-object v1, p0

    .line 2422
    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    .line 2436
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :cond_a6
    :goto_a6
    return-void
.end method

.method private scanLocalFile(Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;)V
    .registers 8

    .line 1659
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getInstance()Lcom/pilotlab/rollereye/Controller/FilePathController;

    move-result-object v1

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getDocumentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1661
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_57

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_57

    .line 1662
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_26
    if-ge v2, v1, :cond_57

    aget-object v3, v0, v2

    .line 1663
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_54

    .line 1664
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 1665
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_4f

    const/4 v0, 0x1

    .line 1666
    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setType(I)V

    goto :goto_57

    :cond_4f
    const/4 v0, 0x2

    .line 1667
    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setType(I)V

    goto :goto_57

    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_57
    :goto_57
    return-void
.end method

.method private scoutTrackingCommand(Landroid/graphics/RectF;)V
    .registers 12

    .line 3066
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 3072
    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewWidth:I

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    div-float/2addr v1, v3

    float-to-double v3, v1

    const-wide v5, 0x3fc999999999999aL    # 0.2

    cmpl-double v1, v3, v5

    const-wide/16 v3, 0x0

    if-lez v1, :cond_2b

    .line 3073
    div-int/lit8 v1, v2, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    mul-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    goto :goto_2c

    :cond_2b
    move-wide v0, v3

    .line 3075
    :goto_2c
    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v5

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, p1

    mul-float/2addr v2, v5

    iget p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewWidth:I

    iget v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewHeight:I

    mul-int/2addr p1, v5

    int-to-float p1, p1

    div-float/2addr v2, p1

    const p1, 0x3e4ccccd    # 0.2f

    sub-float/2addr v2, p1

    div-float/2addr v2, p1

    float-to-double v5, v2

    .line 3078
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "V_2:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3080
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz p1, :cond_8c

    .line 3081
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v7, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "V "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-double v4, v5

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-double v0, v0

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, v7, v0, v1}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_8c
    return-void
.end method

.method private scoutTrackingCropCommand(Landroid/graphics/RectF;)V
    .registers 16

    .line 3090
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 3096
    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, p1

    mul-float/2addr v1, v2

    iget p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewWidth:I

    iget v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewHeight:I

    mul-int/2addr p1, v2

    int-to-float p1, p1

    div-float/2addr v1, p1

    const/high16 p1, 0x3e800000    # 0.25f

    sub-float v2, p1, v1

    .line 3099
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3d088889

    cmpl-float v3, v3, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/16 v6, 0x0

    if-lez v3, :cond_42

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_37

    const-wide/high16 v2, 0x4050000000000000L    # 64.0

    sub-float/2addr v1, p1

    float-to-double v8, v1

    .line 3101
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    goto :goto_3f

    :cond_37
    const-wide/high16 v2, -0x3fb0000000000000L    # -64.0

    sub-float/2addr v1, p1

    float-to-double v8, v1

    .line 3103
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    :goto_3f
    mul-double v1, v8, v2

    goto :goto_43

    :cond_42
    move-wide v1, v6

    .line 3106
    :goto_43
    iget p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewWidth:I

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    sub-float/2addr v0, v3

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    div-float/2addr v0, p1

    float-to-double v8, v0

    const-wide v10, 0x3fc999999999999aL    # 0.2

    cmpl-double p1, v8, v10

    const-wide v10, 0x3fc70a3d70a3d70aL    # 0.18

    if-lez p1, :cond_63

    .line 3110
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    neg-double v3, v3

    :goto_61
    mul-double/2addr v3, v10

    goto :goto_72

    :cond_63
    const-wide v12, -0x4036666666666666L    # -0.2

    cmpg-double p1, v8, v12

    if-gez p1, :cond_71

    .line 3113
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    goto :goto_61

    :cond_71
    move-wide v3, v6

    .line 3118
    :goto_72
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    if-eqz p1, :cond_98

    .line 3119
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;->getHwVer()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    const/4 v5, 0x7

    .line 3120
    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "00"

    .line 3121
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    const-string v0, "02"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_93

    goto :goto_98

    :cond_93
    const-wide v8, 0x3fe6666660000000L    # 0.699999988079071

    :cond_98
    :goto_98
    mul-double/2addr v3, v8

    .line 3131
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f926e978d4fdf3bL    # 0.018

    cmpg-double p1, v8, v10

    if-gez p1, :cond_a7

    move-wide v3, v6

    .line 3134
    :cond_a7
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz p1, :cond_d7

    .line 3135
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v5, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "V "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v5, v1, v2}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_d7
    return-void
.end method

.method private selectShow()V
    .registers 6

    .line 2476
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f11033c

    .line 2477
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2478
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2479
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "value"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2480
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2481
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const v3, 0x7f110346

    .line 2482
    invoke-virtual {p0, v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2483
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2484
    invoke-direct {p0, v0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->dialogChoice(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private setWayPoint()V
    .registers 6

    .line 2469
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_WAYPOINT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 2470
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_17

    .line 2471
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

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

.method private setfocus(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x1

    .line 2327
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 2328
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 2329
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 2330
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method private showWayPointMenu()V
    .registers 3

    .line 2081
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_follow_btn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2082
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_detect_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2083
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_mic_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2084
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_speaker_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2085
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_record_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2086
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_takephoto_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2087
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_layout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private spacing(Landroid/view/MotionEvent;)F
    .registers 6

    const/4 v0, 0x0

    .line 732
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 733
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 734
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private startAudio()V
    .registers 5

    .line 1034
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_12

    .line 1035
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

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

    .line 1013
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_1f

    .line 1014
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->isShowing()Z

    .line 1017
    :cond_11
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->IOTYPE_USER_IPCAM_START:I

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_1f
    return-void
.end method

.method private startFollow()V
    .registers 7

    .line 2138
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myTrackDispose:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_7

    .line 2139
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2141
    :cond_7
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "tensorflow"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->handlerThreadTensorflow:Landroid/os/HandlerThread;

    .line 2142
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->handlerThreadTensorflow:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2143
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->handlerThreadTensorflow:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->handlerTensorflow:Landroid/os/Handler;

    .line 2145
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "streamCover"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->handlerThreadStreamCover:Landroid/os/HandlerThread;

    .line 2146
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->handlerThreadStreamCover:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2147
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->handlerThreadStreamCover:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->handlerStreamCover:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 2149
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->isTracking:Z

    .line 2150
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_scanview:Lcom/pilotlab/rollereye/CustomerView/ScanView;

    iget v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->crop_factor_width:F

    iget v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->crop_factor_height:F

    invoke-virtual {v1, v0, v2, v3}, Lcom/pilotlab/rollereye/CustomerView/ScanView;->initFirst(ZFF)V

    .line 2151
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_scan_layout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2152
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_follow_btn:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2153
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_btn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2154
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_stop_btn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2155
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_detect_btn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2156
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->trackingOverlay:Lcom/pilotlab/rollereye/tensorflow/customview/OverlayView;

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/tensorflow/customview/OverlayView;->setVisibility(I)V

    const-wide/16 v0, 0x3e8

    .line 2158
    iget-wide v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->trackingTimeClip:J

    const-wide/16 v4, 0x4

    mul-long/2addr v2, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3, v4}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$22;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$22;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private startNav(Ljava/lang/String;)V
    .registers 6

    .line 2373
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_START:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 2374
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_2d

    .line 2375
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "pathName"

    if-eqz p1, :cond_13

    .line 2378
    :try_start_f
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1d

    :cond_13
    const-string p1, ""

    .line 2380
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception p1

    .line 2383
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 2385
    :goto_1d
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

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

    .line 968
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_55

    const-string v1, "record"

    const-string v2, "type"

    if-eqz p1, :cond_3b

    .line 970
    :try_start_b
    sget-object p1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->RECORD_START:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 971
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mode"

    const/4 v2, 0x0

    .line 972
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "duration"

    .line 973
    invoke-static {p0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getRecordDuration(Landroid/content/Context;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "count"

    .line 974
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 975
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_59

    .line 976
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto :goto_59

    .line 979
    :cond_3b
    sget-object p1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->RECORD_STOP:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 980
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 981
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_59

    .line 982
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

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

    .line 986
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_59
    :goto_59
    return-void
.end method

.method private startVoip()V
    .registers 5

    .line 1051
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_12

    .line 1052
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

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

    .line 1042
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_12

    .line 1043
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

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

    .line 1025
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_12

    .line 1026
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

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

    .line 1059
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_12

    .line 1060
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

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

    .line 948
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->RECORD_STATUS:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 949
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    const-string v2, "type"

    const-string v3, "record"

    .line 951
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mode"

    const/4 v3, 0x0

    .line 952
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "duration"

    .line 953
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "count"

    .line 954
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception v2

    .line 956
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 958
    :goto_23
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v2, :cond_37

    .line 959
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

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

    .line 994
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->RECORD_START:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 995
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    const-string v2, "type"

    const-string v3, "snapshot"

    .line 997
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mode"

    const/4 v3, 0x0

    .line 998
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "duration"

    .line 999
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "count"

    const/4 v3, 0x1

    .line 1000
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_1f} :catch_20

    goto :goto_24

    :catch_20
    move-exception v2

    .line 1002
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1004
    :goto_24
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v2, :cond_38

    .line 1005
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

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

    .line 2192
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_takephoto_btn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 2193
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_blackCover:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2194
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_blackCover:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2195
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_blackCover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2196
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 2197
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 2198
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$23;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$23;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    .line 2199
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2218
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private tensorflowTracking([B[B[B)V
    .registers 6

    .line 2694
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->isProcessingFrame:Z

    if-eqz v0, :cond_c

    .line 2695
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->TAG:Ljava/lang/String;

    const-string p2, "Dropping frame!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2700
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->rgbBytes:[I

    if-nez v0, :cond_24

    .line 2701
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->screenHeight:I

    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewHeight:I

    .line 2702
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->screenWidth:I

    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewWidth:I

    .line 2703
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewWidth:I

    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewHeight:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->rgbBytes:[I

    .line 2704
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->onPreviewSizeChosen()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_24} :catch_3d

    :cond_24
    const/4 v0, 0x1

    .line 2712
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->isProcessingFrame:Z

    .line 2713
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewWidth:I

    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->yRowStride:I

    .line 2715
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$37;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$37;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;[B[B[B)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->imageConverter:Ljava/lang/Runnable;

    .line 2726
    new-instance p1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$38;

    invoke-direct {p1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$38;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->postInferenceCallback:Ljava/lang/Runnable;

    .line 2733
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->processImage()V

    return-void

    :catch_3d
    move-exception p1

    .line 2707
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->TAG:Ljava/lang/String;

    const-string p3, "Exception!"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private tensorflowTracking_crop([B[B[B)V
    .registers 6

    .line 2739
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->isProcessingFrame:Z

    if-eqz v0, :cond_c

    .line 2740
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->TAG:Ljava/lang/String;

    const-string p2, "Dropping frame!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2745
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->rgbBytes:[I

    if-nez v0, :cond_2e

    .line 2746
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->screenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->crop_factor_height:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewHeight:I

    .line 2747
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->screenWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->crop_factor_width:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewWidth:I

    .line 2748
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewWidth:I

    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewHeight:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->rgbBytes:[I

    .line 2749
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->onPreviewSizeChosen_crop()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2e} :catch_47

    :cond_2e
    const/4 v0, 0x1

    .line 2757
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->isProcessingFrame:Z

    .line 2758
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewWidth:I

    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->yRowStride:I

    .line 2760
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$39;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$39;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;[B[B[B)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->imageConverter:Ljava/lang/Runnable;

    .line 2775
    new-instance p1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$40;

    invoke-direct {p1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$40;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->postInferenceCallback:Ljava/lang/Runnable;

    .line 2782
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->processImage_crop()V

    return-void

    :catch_47
    move-exception p1

    .line 2752
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->TAG:Ljava/lang/String;

    const-string p3, "Exception!"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private testH264File()V
    .registers 5

    .line 766
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

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->outputStream:Ljava/io/FileOutputStream;
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception v0

    .line 768
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_2a
    return-void
.end method

.method private testVoipFile()V
    .registers 5

    .line 758
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

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->outputStream:Ljava/io/FileOutputStream;
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception v0

    .line 760
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

    .line 855
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 857
    :goto_12
    array-length v3, v0

    if-ge v2, v3, :cond_2f

    .line 858
    new-instance v3, Lcom/pilotlab/rollereye/Bean/WayPointBean;

    invoke-direct {v3}, Lcom/pilotlab/rollereye/Bean/WayPointBean;-><init>()V

    const-string v4, ""

    .line 859
    invoke-virtual {v3, v4}, Lcom/pilotlab/rollereye/Bean/WayPointBean;->setCreateTime(Ljava/lang/String;)V

    .line 860
    invoke-virtual {v3, v2}, Lcom/pilotlab/rollereye/Bean/WayPointBean;->setId(I)V

    .line 861
    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Lcom/pilotlab/rollereye/Bean/WayPointBean;->setName(Ljava/lang/String;)V

    .line 862
    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->wayPoint_data:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 865
    :cond_2f
    new-instance v0, Lcom/pilotlab/rollereye/Bean/WayPointBean;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/Bean/WayPointBean;-><init>()V

    .line 866
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->wayPoint_data:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 867
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->wayPointListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->updateUI()V

    return-void
.end method

.method private unRegisterSensor()V
    .registers 3

    .line 1158
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->sensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_b

    .line 1159
    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_b
    return-void
.end method

.method private zoom(F)V
    .registers 4

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u653e\u5927\u7f29\u5c0f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionEvent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->scalef(F)V

    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/AudioFrameMessage;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1741
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->TAG:Ljava/lang/String;

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

    .line 1742
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_speaker_btn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1743
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->audioData_Queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_27
    return-void
.end method

.method public Event(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1360
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->Event(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;)V

    .line 1361
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;->getMessage()Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->getTag()I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_14

    const/16 v1, 0x24

    if-eq v0, v1, :cond_14

    goto :goto_38

    .line 1364
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

    if-ne p1, v0, :cond_38

    .line 1365
    :cond_32
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->checkWiFiDirect()V

    .line 1366
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->checkSystemVer()V

    :cond_38
    :goto_38
    return-void
.end method

.method public Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    .registers 13
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1375
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 1376
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getType()I

    move-result v0

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    if-ne v0, v1, :cond_510

    .line 1378
    :try_start_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1379
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "id"

    .line 1380
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_23} :catch_510

    const/16 v2, 0x7d2

    const-string v3, "status"

    const-string v4, "body"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v1, v2, :cond_53

    .line 1382
    :try_start_2d
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1383
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_510

    const-string v0, "running"

    .line 1384
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v6, :cond_49

    .line 1385
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_record_btn:Landroid/widget/Button;

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setSelected(Z)V

    .line 1386
    invoke-virtual {p0, v6}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->startStopRecAnimator(Z)V

    goto/16 :goto_510

    .line 1388
    :cond_49
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_record_btn:Landroid/widget/Button;

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setSelected(Z)V

    .line 1389
    invoke-virtual {p0, v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->startStopRecAnimator(Z)V

    goto/16 :goto_510

    :cond_53
    const/16 v2, 0xbbd

    if-ne v1, v2, :cond_88

    .line 1393
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1394
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_510

    .line 1395
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 1396
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/pilotlab/rollereye/Bean/ParamBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ParamBean;

    .line 1397
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ParamBean;->getBody()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;->getSystem()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;

    .line 1398
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ParamBean;->getBody()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;->getMotion()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->motionBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;

    goto/16 :goto_510

    :cond_88
    const/16 p1, 0x138f

    const v2, 0x7f11003e

    if-ne v1, p1, :cond_b5

    .line 1401
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1402
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_510

    const p1, 0x7f11033e

    .line 1403
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$13;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$13;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 1408
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto/16 :goto_510

    :cond_b5
    const/16 p1, 0x1389

    const/4 v7, -0x1

    const/4 v8, 0x2

    if-ne v1, p1, :cond_136

    .line 1411
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1412
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_510

    const-string v0, "position"

    .line 1413
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_cb} :catch_510

    :try_start_cb
    const-string v1, "attitude"

    .line 1416
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_d1} :catch_d2

    goto :goto_d7

    :catch_d2
    move-exception p1

    .line 1418
    :try_start_d3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move p1, v7

    .line 1420
    :goto_d7
    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->nav_status:I

    iget v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->nav_stop:I

    if-eq v1, v2, :cond_510

    const/high16 v1, 0x447a0000    # 1000.0f

    const-wide v2, 0x408f400000000000L    # 1000.0

    if-eq p1, v7, :cond_10e

    .line 1424
    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v9

    mul-double/2addr v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-float v5, v9

    div-float/2addr v5, v1

    .line 1425
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-float v6, v6

    div-float/2addr v6, v1

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v7

    mul-double/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-float v0, v2

    div-float/2addr v0, v1

    .line 1424
    invoke-virtual {v4, v5, v6, v0, p1}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->update(FFFI)V

    goto/16 :goto_510

    .line 1427
    :cond_10e
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-float v4, v4

    div-float/2addr v4, v1

    .line 1428
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getDouble(I)D

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

    .line 1427
    invoke-virtual {p1, v4, v5, v0}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->update(FFF)V

    goto/16 :goto_510

    :cond_136
    const/16 p1, 0x138a

    if-ne v1, p1, :cond_149

    .line 1432
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1433
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_510

    .line 1435
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->reCheckStatus()V

    goto/16 :goto_510

    :cond_149
    const/16 p1, 0x138d

    if-ne v1, p1, :cond_245

    .line 1438
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1439
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_23e

    .line 1440
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->wayPoint_data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1441
    :cond_15d
    :goto_15d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_173

    .line 1442
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/WayPointBean;

    .line 1443
    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/WayPointBean;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15d

    .line 1444
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_15d

    :cond_173
    const-string v0, "paths"

    .line 1447
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move v1, v5

    .line 1448
    :goto_17a
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_19c

    .line 1449
    new-instance v2, Lcom/pilotlab/rollereye/Bean/WayPointBean;

    invoke-direct {v2}, Lcom/pilotlab/rollereye/Bean/WayPointBean;-><init>()V

    const-string v3, ""

    .line 1450
    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/Bean/WayPointBean;->setCreateTime(Ljava/lang/String;)V

    .line 1451
    invoke-virtual {v2, v1}, Lcom/pilotlab/rollereye/Bean/WayPointBean;->setId(I)V

    .line 1452
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/Bean/WayPointBean;->setName(Ljava/lang/String;)V

    .line 1453
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->wayPoint_data:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_17a

    :cond_19c
    const-string v0, "pathlist"

    .line 1456
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_23e

    .line 1458
    :goto_1a4
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v5, v0, :cond_23e

    .line 1459
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 1460
    new-instance v1, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-direct {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;-><init>()V

    const-string v2, "size"

    .line 1461
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setFileSize(J)V

    const-string v2, "name"

    .line 1462
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setFileName(Ljava/lang/String;)V

    .line 1463
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Global;->getDownloadSession()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setSession(I)V

    const-string v2, "create_time"

    .line 1464
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setCreateTime(Ljava/lang/String;)V

    const-string v2, "path"

    .line 1465
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setRemote_path(Ljava/lang/String;)V

    .line 1466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getInstance()Lcom/pilotlab/rollereye/Controller/FilePathController;

    move-result-object v2

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

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

    .line 1467
    invoke-direct {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->scanLocalFile(Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;)V

    .line 1469
    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getDownload_status()I

    move-result v0

    if-eq v0, v8, :cond_23a

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getType()I

    move-result v0

    if-ne v0, v6, :cond_21b

    goto :goto_23a

    .line 1471
    :cond_21b
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PdownloadList:Ljava/util/List;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23a

    .line 1472
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_23a

    .line 1473
    new-instance v0, Lcom/pilotlab/rollereye/P2P/P2PDownload;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-direct {v0, v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PDownload;-><init>(Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;Lcom/pilotlab/rollereye/P2P/P2PClient;)V

    .line 1474
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->downloadBegin()V

    .line 1475
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PdownloadList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23a
    :goto_23a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1a4

    .line 1482
    :cond_23e
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->wayPointListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->updateUI()V

    goto/16 :goto_510

    :cond_245
    const/16 p1, 0x138b

    if-ne v1, p1, :cond_28e

    .line 1485
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1486
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_272

    .line 1488
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->reCheckStatus()V

    const p1, 0x7f110347

    .line 1489
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$14;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$14;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 1494
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto/16 :goto_510

    :cond_272
    const p1, 0x7f110343

    .line 1496
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$15;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$15;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 1501
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto/16 :goto_510

    :cond_28e
    const/16 p1, 0x138e

    if-ne v1, p1, :cond_2c1

    .line 1504
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1505
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2a8

    const-string p1, "partol"

    const-string v0, "\u8bbe\u7f6e\u5f00\u59cb\u4e3a1"

    .line 1506
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->reCheckStatus()V

    goto/16 :goto_510

    .line 1509
    :cond_2a8
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_510

    .line 1510
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    const v0, 0x7f110340

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v7}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto/16 :goto_510

    :cond_2c1
    const/16 p1, 0x1390

    if-ne v1, p1, :cond_2ca

    .line 1514
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->reCheckStatus()V

    goto/16 :goto_510

    :cond_2ca
    const/16 p1, 0x138c

    if-ne v1, p1, :cond_2d7

    .line 1516
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1517
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    goto/16 :goto_510

    :cond_2d7
    const/16 p1, 0x1392

    if-ne v1, p1, :cond_2f9

    .line 1521
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1522
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_510

    .line 1523
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_tips:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1524
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->addEditFavoriteWaypoint()V

    .line 1525
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_510

    :cond_2f9
    const/16 p1, 0xbb9

    if-ne v1, p1, :cond_4ca

    .line 1528
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz p1, :cond_510

    .line 1530
    invoke-direct {p0, v6}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->enableStatusButton(Z)V

    .line 1531
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    if-eqz p1, :cond_4b8

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    if-eqz p1, :cond_4b8

    .line 1532
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getBattary()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;->getCharging()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v6, :cond_340

    .line 1533
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->joystick_container:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_32f

    .line 1534
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->joystick_container:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1535
    :cond_32f
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_out_btn:Landroid/widget/Button;

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1536
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_bac_home_tips:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1537
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_go_home_btn:Landroid/widget/Button;

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_3fd

    .line 1539
    :cond_340
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getReverse()I

    move-result p1

    if-ne p1, v6, :cond_35b

    .line 1540
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_bac_home_tips:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1541
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_go_home_btn:Landroid/widget/Button;

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_365

    .line 1543
    :cond_35b
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_bac_home_tips:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1544
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_go_home_btn:Landroid/widget/Button;

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1546
    :goto_365
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getCalibration()I

    move-result p1

    if-eq p1, v6, :cond_3f8

    .line 1549
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getEditPath()I

    move-result p1

    const v1, 0x7f08022c

    if-ne p1, v6, :cond_3b5

    .line 1551
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getReverse()I

    move-result p1

    if-eq p1, v6, :cond_3aa

    .line 1552
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getSystemVer()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$SystemBean;

    move-result-object p1

    if-eqz p1, :cond_3af

    .line 1553
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_favorite_btn:Landroid/widget/Button;

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3af

    .line 1556
    :cond_3aa
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_favorite_btn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1558
    :cond_3af
    :goto_3af
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->mDefaultController:Lcom/pilotlab/rollereye/Controller/DefaultController;

    invoke-virtual {p1, v1}, Lcom/pilotlab/rollereye/Controller/DefaultController;->createLeftControlTouchView(I)V

    goto :goto_3eb

    .line 1562
    :cond_3b5
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->motionBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;

    const v2, 0x7f08022b

    if-eqz p1, :cond_3d0

    .line 1563
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->motionBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;->getTrack()I

    move-result p1

    if-ne p1, v6, :cond_3ca

    .line 1564
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->mDefaultController:Lcom/pilotlab/rollereye/Controller/DefaultController;

    invoke-virtual {p1, v1}, Lcom/pilotlab/rollereye/Controller/DefaultController;->createLeftControlTouchView(I)V

    goto :goto_3eb

    .line 1566
    :cond_3ca
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->mDefaultController:Lcom/pilotlab/rollereye/Controller/DefaultController;

    invoke-virtual {p1, v2}, Lcom/pilotlab/rollereye/Controller/DefaultController;->createLeftControlTouchView(I)V

    goto :goto_3eb

    .line 1568
    :cond_3d0
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz p1, :cond_3e6

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getTrackParam(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-ne p1, v6, :cond_3e6

    .line 1569
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->mDefaultController:Lcom/pilotlab/rollereye/Controller/DefaultController;

    invoke-virtual {p1, v1}, Lcom/pilotlab/rollereye/Controller/DefaultController;->createLeftControlTouchView(I)V

    goto :goto_3eb

    .line 1571
    :cond_3e6
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->mDefaultController:Lcom/pilotlab/rollereye/Controller/DefaultController;

    invoke-virtual {p1, v2}, Lcom/pilotlab/rollereye/Controller/DefaultController;->createLeftControlTouchView(I)V

    .line 1574
    :goto_3eb
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->joystick_container:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_3f8

    .line 1575
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->joystick_container:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1578
    :cond_3f8
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_out_btn:Landroid/widget/Button;

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1580
    :goto_3fd
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getEstimate()I

    move-result p1

    if-ne p1, v6, :cond_41e

    iget p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->nav_status:I

    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->nav_stop:I

    if-ne p1, v0, :cond_41e

    .line 1582
    iget p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->nav_estimate:I

    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->nav_status:I

    .line 1583
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->closeWayPointMenu()V

    .line 1584
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->openSlamView()V

    goto :goto_43b

    .line 1586
    :cond_41e
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getEstimate()I

    move-result p1

    if-nez p1, :cond_43b

    iget p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->nav_status:I

    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->nav_estimate:I

    if-ne p1, v0, :cond_43b

    .line 1587
    iget p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->nav_stop:I

    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->nav_status:I

    .line 1589
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->closeSlamView()V

    .line 1593
    :cond_43b
    :goto_43b
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getEstimate()I

    move-result p1

    if-ne p1, v6, :cond_497

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getPatrol()I

    move-result p1

    if-ne p1, v6, :cond_497

    .line 1594
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getPatrolName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_497

    .line 1596
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getInstance()Lcom/pilotlab/rollereye/Controller/FilePathController;

    move-result-object v2

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

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

    .line 1598
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->setMapFile(Ljava/io/File;)V

    .line 1602
    :cond_497
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getCamera()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$CameraBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$CameraBean;->getRecord()I

    move-result p1

    if-ne p1, v6, :cond_4b0

    .line 1603
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_record_btn:Landroid/widget/Button;

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setSelected(Z)V

    .line 1604
    invoke-virtual {p0, v6}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->startStopRecAnimator(Z)V

    goto :goto_4b8

    .line 1606
    :cond_4b0
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_record_btn:Landroid/widget/Button;

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setSelected(Z)V

    .line 1607
    invoke-virtual {p0, v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->startStopRecAnimator(Z)V

    .line 1610
    :cond_4b8
    :goto_4b8
    iget p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->countCameraStatus:I

    if-lez p1, :cond_4c4

    iget p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->countCameraStatus:I

    rem-int/2addr p1, v8

    if-nez p1, :cond_4c4

    .line 1611
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->startCamera()V

    .line 1612
    :cond_4c4
    iget p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->countCameraStatus:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->countCameraStatus:I

    goto :goto_510

    :cond_4ca
    const/16 p1, 0x3e9

    if-ne v1, p1, :cond_510

    .line 1615
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "init"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_510

    .line 1618
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->checkDefaultWiFiDirectDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    if-eqz p1, :cond_4e7

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->checkDefaultWiFiDirectDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4e7

    return-void

    :cond_4e7
    const p1, 0x7f11034c

    .line 1621
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$16;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$16;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    const p1, 0x7f110007

    .line 1629
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$17;

    invoke-direct {v8, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$17;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    const/4 v9, 0x0

    move-object v3, p0

    .line 1621
    invoke-virtual/range {v3 .. v9}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->checkDefaultWiFiDirectDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 1635
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->checkDefaultWiFiDirectDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V
    :try_end_510
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_510} :catch_510

    :catch_510
    :cond_510
    :goto_510
    return-void
.end method

.method public Event(Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;)V
    .registers 16
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->POSTING:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x0

    .line 1751
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->countCameraStatus:I

    .line 1753
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getTimeStamp()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->videoTimeStamp:J

    .line 1755
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getPar3()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_36

    .line 1757
    iget-wide v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->index_iframe:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2f

    .line 1758
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getIndex()J

    move-result-wide v3

    iget-wide v7, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->index_iframe:J

    sub-long/2addr v3, v7

    const-wide/16 v7, 0x1e

    rem-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-nez v1, :cond_2b

    const/16 v1, 0x1e

    .line 1759
    iput v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->defaultFrames:I

    goto :goto_2f

    :cond_2b
    const/16 v1, 0x19

    .line 1761
    iput v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->defaultFrames:I

    .line 1765
    :cond_2f
    :goto_2f
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getIndex()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->index_iframe:J

    goto :goto_3c

    .line 1767
    :cond_36
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getIndex()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->index_bframe:J

    .line 1770
    :goto_3c
    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    if-nez v5, :cond_41

    return-void

    .line 1773
    :cond_41
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getData()[B

    move-result-object v6

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getData_length()I

    move-result v7

    iget-object v8, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->y:[B

    iget-object v9, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->y_len:[I

    iget-object v10, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->u:[B

    iget-object v11, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->u_len:[I

    iget-object v12, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->v:[B

    iget-object v13, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->v_len:[I

    invoke-virtual/range {v5 .. v13}, Lcom/pilotlab/ffmpeg/ffmpeg;->Decode([BI[B[I[B[I[B[I)I

    move-result v1

    const/4 v3, -0x2

    if-ne v1, v3, :cond_7f

    .line 1776
    new-array p1, v2, [I

    .line 1777
    new-array v1, v2, [I

    .line 1778
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    invoke-virtual {v3, p1, v1}, Lcom/pilotlab/ffmpeg/ffmpeg;->Rest([I[I)I

    .line 1779
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1780
    iput v2, v3, Landroid/os/Message;->what:I

    .line 1781
    aget p1, p1, v0

    iput p1, v3, Landroid/os/Message;->arg1:I

    .line 1782
    aget p1, v1, v0

    iput p1, v3, Landroid/os/Message;->arg2:I

    .line 1783
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/16 p1, 0xf

    .line 1785
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->checkVideoAutoAdjust(I)V

    goto :goto_a1

    :cond_7f
    if-ltz v1, :cond_a1

    .line 1788
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myBitRate:F

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getData_length()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr p1, v1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myBitRate:F

    .line 1790
    iget-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->begin2CheckFrame:Z

    if-nez p1, :cond_94

    .line 1791
    iput-boolean v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->begin2CheckFrame:Z

    .line 1793
    :cond_94
    iget-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->receiveFrameCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->receiveFrameCount:J

    .line 1799
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myHandler:Landroid/os/Handler;

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

    .line 1723
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->TAG:Ljava/lang/String;

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

    .line 1733
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_24

    .line 1734
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendVoipMessage(Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;)V

    :cond_24
    return-void
.end method

.method public OnLongClick(Landroid/view/View;I)V
    .registers 3

    .line 2254
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->TAG:Ljava/lang/String;

    const-string p2, "OnLongClick"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->wayPoint_data:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x2

    if-ge p1, p2, :cond_11

    return-void

    .line 2259
    :cond_11
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->wayPointListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->isEdit()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->setEdit(Z)V

    .line 2260
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->wayPointListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->updateUI()V

    return-void
.end method

.method protected getLuminance()[B
    .registers 3

    .line 2652
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->yuvBytes:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected getLuminanceStride()I
    .registers 2

    .line 2648
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->yRowStride:I

    return v0
.end method

.method protected getRgbBytes()[I
    .registers 2

    .line 2642
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->imageConverter:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 2643
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->runInBackgroundStreamCover(Ljava/lang/Runnable;)V

    .line 2644
    :cond_7
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->rgbBytes:[I

    return-object v0
.end method

.method protected initEvent()V
    .registers 3

    .line 460
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initEvent()V

    .line 461
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_setting_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_takephoto_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_record_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_mic_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_bac_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_follow_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_detect_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_out_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_go_home_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_speaker_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_scanview_cancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_stop_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_favorite_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view_close:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view_open:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->mDefaultController:Lcom/pilotlab/rollereye/Controller/DefaultController;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Controller/DefaultController;->setLeftTouchViewListener(Lcom/pilotlab/rollereye/MyInterface/JoystickTouchViewListener;)V

    .line 557
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->mDefaultController:Lcom/pilotlab/rollereye/Controller/DefaultController;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$3;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Controller/DefaultController;->setRightTouchViewListener(Lcom/pilotlab/rollereye/MyInterface/JoystickTouchViewListener;)V

    .line 654
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$4;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$4;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected initView()V
    .registers 11

    .line 336
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initView()V

    const v0, 0x7f0a055a

    .line 338
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->surfaceView:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    .line 340
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    .line 343
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$1;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myHandler:Landroid/os/Handler;

    const v0, 0x7f0a043f

    .line 381
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->joystick_container:Landroid/widget/RelativeLayout;

    .line 382
    new-instance v0, Lcom/pilotlab/rollereye/Controller/DefaultController;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->joystick_container:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/pilotlab/rollereye/Bean/PadStyle;->PUSHED:Lcom/pilotlab/rollereye/Bean/PadStyle;

    invoke-direct {v0, p0, v2, v3}, Lcom/pilotlab/rollereye/Controller/DefaultController;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/pilotlab/rollereye/Bean/PadStyle;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->mDefaultController:Lcom/pilotlab/rollereye/Controller/DefaultController;

    .line 384
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->mDefaultController:Lcom/pilotlab/rollereye/Controller/DefaultController;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Controller/DefaultController;->createViews()V

    .line 385
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->mDefaultController:Lcom/pilotlab/rollereye/Controller/DefaultController;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/Controller/DefaultController;->showViews(Z)V

    const v0, 0x7f0a0072

    .line 388
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_takephoto_btn:Landroid/widget/Button;

    const v0, 0x7f0a0070

    .line 389
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_setting_btn:Landroid/widget/ImageButton;

    const v0, 0x7f0a006a

    .line 390
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_record_btn:Landroid/widget/Button;

    const v0, 0x7f0a0066

    .line 391
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_mic_btn:Landroid/widget/Button;

    const v0, 0x7f0a005c

    .line 392
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_bac_btn:Landroid/widget/ImageButton;

    const v0, 0x7f0a0064

    .line 393
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_follow_btn:Landroid/widget/Button;

    const v0, 0x7f0a0062

    .line 394
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_detect_btn:Landroid/widget/Button;

    const v0, 0x7f0a0074

    .line 395
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_btn:Landroid/widget/Button;

    const v0, 0x7f0a0067

    .line 396
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_out_btn:Landroid/widget/Button;

    const v0, 0x7f0a0065

    .line 397
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_go_home_btn:Landroid/widget/Button;

    const v0, 0x7f0a0071

    .line 398
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_speaker_btn:Landroid/widget/Button;

    const v0, 0x7f0a0077

    .line 399
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_stop_btn:Landroid/widget/Button;

    const v0, 0x7f0a0063

    .line 400
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_favorite_btn:Landroid/widget/Button;

    const v0, 0x7f0a0060

    .line 401
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_blackCover:Landroid/view/View;

    const v0, 0x7f0a006d

    .line 402
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_scan_layout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0075

    .line 403
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_layout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a006f

    .line 404
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_scanview_cancel:Landroid/widget/Button;

    const v0, 0x7f0a006e

    .line 405
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/CustomerView/ScanView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_scanview:Lcom/pilotlab/rollereye/CustomerView/ScanView;

    const v0, 0x7f0a007b

    .line 406
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view_close:Landroid/widget/ImageButton;

    const v0, 0x7f0a007d

    .line 407
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view_open:Landroid/widget/ImageButton;

    const v0, 0x7f0a0076

    .line 409
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 410
    new-instance v0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->wayPoint_data:Ljava/util/List;

    invoke-direct {v0, p0, v3, p0}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$onItemCallback;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->wayPointListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;

    .line 411
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 412
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 413
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->wayPointListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v0, 0x7f0a007c

    .line 415
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view_layout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0079

    .line 416
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    .line 417
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view:Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->setZOrderMediaOverlay(Z)V

    const v0, 0x7f0a007e

    .line 418
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view_text:Landroid/widget/TextView;

    .line 419
    new-instance v0, Landroid/text/SpannableString;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view_text:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const v3, 0x7f0801ab

    .line 421
    invoke-virtual {p0, v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 422
    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view_text:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view_text:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineHeight()I

    move-result v5

    int-to-double v8, v5

    mul-double/2addr v8, v6

    double-to-int v5, v8

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 423
    new-instance v4, Landroid/text/style/ImageSpan;

    invoke-direct {v4, v3, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/16 v1, 0x22

    const/4 v3, 0x3

    .line 424
    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 425
    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view_text:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f020014

    .line 427
    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v5

    check-cast v5, Landroid/animation/ObjectAnimator;

    .line 429
    iget-object v6, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_view_text:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 430
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    const v5, 0x7f0a005d

    .line 432
    invoke-virtual {p0, v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_bac_home_tips:Landroid/widget/TextView;

    .line 433
    new-instance v5, Landroid/text/SpannableString;

    iget-object v6, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_bac_home_tips:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 434
    invoke-virtual {v5, v4, v2, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 435
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_bac_home_tips:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 439
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_bac_home_tips:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 440
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    const v0, 0x7f0a0069

    .line 443
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_rec_ly:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0068

    .line 444
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_rec_img:Landroid/widget/ImageView;

    const v0, 0x7f0a0073

    .line 446
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_tv_bitRate:Landroid/widget/TextView;

    const v0, 0x7f0a005f

    .line 447
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_bitRate_ry:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a006b

    .line 448
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_scaleview_ry:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a006c

    .line 449
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/CustomerView/ScaleView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_scaleview_scaleview:Lcom/pilotlab/rollereye/CustomerView/ScaleView;

    const v0, 0x7f0a0078

    .line 451
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_tips:Landroid/widget/TextView;

    const v0, 0x7f0a05b3

    .line 453
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/tensorflow/customview/OverlayView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->trackingOverlay:Lcom/pilotlab/rollereye/tensorflow/customview/OverlayView;

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .line 1905
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1911
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1913
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_18e

    packed-switch p1, :pswitch_data_1a8

    packed-switch p1, :pswitch_data_1b8

    goto/16 :goto_18c

    .line 1923
    :pswitch_16
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->takePhotoAnimation()V

    .line 1924
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->takePhoto()V

    goto/16 :goto_18c

    .line 1944
    :pswitch_1e
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_speaker_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 1945
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_speaker_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_37

    .line 1946
    iput-boolean v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->isPlaying:Z

    .line 1947
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->startAudio()V

    goto/16 :goto_18c

    .line 1949
    :cond_37
    iput-boolean v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->isPlaying:Z

    .line 1950
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->stopAudio()V

    goto/16 :goto_18c

    .line 1982
    :pswitch_3e
    const-class p1, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1983
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_18c

    .line 1966
    :pswitch_48
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->cancelFollow()V

    goto/16 :goto_18c

    :pswitch_4d
    const/4 p1, 0x0

    .line 1989
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->startNav(Ljava/lang/String;)V

    goto/16 :goto_18c

    .line 1931
    :pswitch_53
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_mic_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 1932
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_mic_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 1934
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->startVoip()V

    .line 1935
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myAudioRecord:Lcom/pilotlab/ffmpeg/MyAudioRecord;

    invoke-virtual {p1, v1}, Lcom/pilotlab/ffmpeg/MyAudioRecord;->pause(Z)Z

    goto/16 :goto_18c

    .line 1937
    :cond_6f
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myAudioRecord:Lcom/pilotlab/ffmpeg/MyAudioRecord;

    invoke-virtual {p1, v2}, Lcom/pilotlab/ffmpeg/MyAudioRecord;->pause(Z)Z

    goto/16 :goto_18c

    .line 1986
    :pswitch_76
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->goBackCharge()V

    goto/16 :goto_18c

    .line 1954
    :pswitch_7b
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->startFollow()V

    goto/16 :goto_18c

    .line 1993
    :pswitch_80
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    if-eqz p1, :cond_18c

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    if-eqz p1, :cond_18c

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getEditPath()I

    move-result p1

    if-ne p1, v2, :cond_18c

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    .line 1994
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getReverse()I

    move-result p1

    if-eq p1, v2, :cond_18c

    .line 1995
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getWaypoint()I

    move-result p1

    const/4 v0, 0x5

    const v1, 0x7f110070

    if-ge p1, v0, :cond_f1

    .line 1996
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_tips:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

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

    .line 1997
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->setWayPoint()V

    goto/16 :goto_18c

    .line 1999
    :cond_f1
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_tips:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f11002d

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_18c

    .line 1927
    :pswitch_112
    const-class p1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1928
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_18c

    .line 1979
    :sswitch_11c
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->openWayPointView()V

    goto/16 :goto_18c

    .line 1976
    :sswitch_121
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->closeWayPointView()V

    goto :goto_18c

    .line 1970
    :sswitch_125
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    if-eqz p1, :cond_155

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    if-eqz p1, :cond_155

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getEditPath()I

    move-result p1

    if-ne p1, v2, :cond_155

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    .line 1971
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getReverse()I

    move-result p1

    if-eq p1, v2, :cond_155

    .line 1972
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->selectShow()V

    goto :goto_18c

    .line 1973
    :cond_155
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->cancelDialogNav()V

    goto :goto_18c

    .line 1957
    :sswitch_159
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 1958
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_waypoint_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_172

    .line 1959
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->showWayPointMenu()V

    .line 1960
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->queryWayPointList()V

    goto :goto_18c

    .line 1962
    :cond_172
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->closeWayPointMenu()V

    goto :goto_18c

    .line 1915
    :sswitch_176
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_record_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_182

    .line 1916
    invoke-direct {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->startStopRecord(Z)V

    goto :goto_185

    .line 1918
    :cond_182
    invoke-direct {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->startStopRecord(Z)V

    .line 1920
    :goto_185
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->reCheckStatus()V

    goto :goto_18c

    .line 1941
    :sswitch_189
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->finish()V

    :cond_18c
    :goto_18c
    return-void

    nop

    :sswitch_data_18e
    .sparse-switch
        0x7f0a005c -> :sswitch_189
        0x7f0a006a -> :sswitch_176
        0x7f0a0074 -> :sswitch_159
        0x7f0a0077 -> :sswitch_125
        0x7f0a007b -> :sswitch_121
        0x7f0a007d -> :sswitch_11c
    .end sparse-switch

    :pswitch_data_1a8
    .packed-switch 0x7f0a0062
        :pswitch_112
        :pswitch_80
        :pswitch_7b
        :pswitch_76
        :pswitch_53
        :pswitch_4d
    .end packed-switch

    :pswitch_data_1b8
    .packed-switch 0x7f0a006f
        :pswitch_48
        :pswitch_3e
        :pswitch_1e
        :pswitch_16
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 319
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 1870
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onDestroy()V

    .line 1871
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->editDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    if-eqz v0, :cond_a

    .line 1872
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->dismiss()V

    .line 1873
    :cond_a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->outputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_16

    .line 1875
    :try_start_e
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception v0

    .line 1877
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1880
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myWayPointDispose:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1d

    .line 1881
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1882
    :cond_1d
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->bitRateDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_24

    .line 1883
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1884
    :cond_24
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->checkDownloadDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_2b

    .line 1885
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1886
    :cond_2b
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PdownloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4a

    const/4 v0, 0x0

    .line 1887
    :goto_34
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PdownloadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4a

    .line 1888
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PdownloadList:Ljava/util/List;

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

    .line 2271
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    if-eqz p1, :cond_9e

    .line 2272
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getBattary()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;->getCharging()I

    move-result p1

    const/4 p2, 0x1

    const v0, 0x7f11003e

    if-ne p1, p2, :cond_84

    .line 2273
    new-instance p1, Landroid/widget/EditText;

    invoke-direct {p1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string p2, ""

    .line 2274
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 2275
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x7f110348

    .line 2276
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(I)V

    const/high16 p2, 0x41200000    # 10.0f

    .line 2277
    invoke-static {p0, p2}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, p2}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, p2}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, p2}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 2278
    new-instance p2, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    invoke-direct {p2, p0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11003b

    .line 2279
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 2280
    invoke-virtual {p2, p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 2281
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$25;

    invoke-direct {v1, p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$25;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Landroid/widget/EditText;)V

    invoke-virtual {p2, v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const v0, 0x7f110007

    .line 2292
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$26;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$26;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    invoke-virtual {p2, v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 2298
    invoke-virtual {p2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p2

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->editDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 2299
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->editDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$27;

    invoke-direct {v0, p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$27;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Landroid/widget/EditText;)V

    invoke-virtual {p2, v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2313
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->editDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_9e

    :cond_84
    const p1, 0x7f11033f

    .line 2316
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$28;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$28;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 2321
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :cond_9e
    :goto_9e
    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 9

    .line 2223
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->wayPointListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->isEdit()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 2224
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->wayPointListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->setEdit(Z)V

    .line 2225
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->wayPointListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->updateUI()V

    goto :goto_78

    .line 2227
    :cond_14
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    if-eqz p1, :cond_78

    .line 2228
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getBattary()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;->getCharging()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5b

    .line 2229
    sget-object p1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_PATROL:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 2230
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_30
    const-string v1, "path"

    .line 2232
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->wayPoint_data:Ljava/util/List;

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

    .line 2234
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 2236
    :goto_46
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz p2, :cond_78

    .line 2237
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto :goto_78

    :cond_5b
    const p1, 0x7f110341

    .line 2240
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f11003e

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$24;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$24;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 2245
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :cond_78
    :goto_78
    return-void
.end method

.method public onItemDelete(Landroid/view/View;I)V
    .registers 9

    const p1, 0x7f11033d

    .line 2335
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f110071

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$29;

    invoke-direct {v3, p0, p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$29;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;I)V

    const p1, 0x7f11003a

    .line 2361
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$30;

    invoke-direct {v5, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$30;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    move-object v0, p0

    .line 2335
    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 2366
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 1124
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onPause()V

    .line 1125
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1126
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 1128
    :cond_14
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myControlCommandDispose:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1b

    .line 1129
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1131
    :cond_1b
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->leftControlDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_22

    .line 1132
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1134
    :cond_22
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->rightControlDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_29

    .line 1135
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1137
    :cond_29
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->checkDefaultWiFiDirectDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    if-eqz v0, :cond_30

    .line 1138
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->dismiss()V

    .line 1140
    :cond_30
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->myCheckeStatusDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_37

    .line 1141
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1143
    :cond_37
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->checkVideoDispose:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_3e

    .line 1144
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1147
    :cond_3e
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->stopCamera()V

    .line 1148
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->releasePlayer()V

    .line 1150
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->releaseVoice()V

    .line 1151
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->stopAudio()V

    .line 1152
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->stopVoip()V

    .line 1153
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->cancelFollow()V

    .line 1154
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->unRegisterSensor()V

    return-void
.end method

.method public onPreviewSizeChosen()V
    .registers 8

    .line 2793
    new-instance v0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->tracker:Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;

    .line 2800
    :try_start_7
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "detect_quant_normal.tflite"

    const-string v2, "file:///android_asset/labelmap_2.txt"

    const/4 v3, 0x1

    const/16 v4, 0x12c

    .line 2799
    invoke-static {v0, v1, v2, v4, v3}, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->create(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->detector:Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_18} :catch_80

    .line 2813
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing at size :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2814
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewWidth:I

    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->rgbFrameBitmap:Landroid/graphics/Bitmap;

    .line 2816
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->croppedBitmap:Landroid/graphics/Bitmap;

    .line 2818
    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewWidth:I

    iget v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewHeight:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v4, 0x12c

    move v3, v4

    .line 2819
    invoke-static/range {v1 .. v6}, Lcom/pilotlab/rollereye/tensorflow/env/ImageUtils;->getTransformationMatrix(IIIIIZ)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->frameToCropTransform:Landroid/graphics/Matrix;

    .line 2824
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->cropToFrameTransform:Landroid/graphics/Matrix;

    .line 2825
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->frameToCropTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->cropToFrameTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2827
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->trackingOverlay:Lcom/pilotlab/rollereye/tensorflow/customview/OverlayView;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$41;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$41;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/tensorflow/customview/OverlayView;->addCallback(Lcom/pilotlab/rollereye/tensorflow/customview/OverlayView$DrawCallback;)V

    .line 2838
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->tracker:Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;

    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewWidth:I

    iget v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->setFrameConfiguration(III)V

    return-void

    :catch_80
    move-exception v0

    .line 2807
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2808
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->TAG:Ljava/lang/String;

    const-string v1, "Exception initializing classifier!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_follow_btn:Landroid/widget/Button;

    const v1, 0x7f110108

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method public onPreviewSizeChosen_crop()V
    .registers 9

    .line 2844
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x41200000    # 10.0f

    .line 2843
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 2845
    new-instance v2, Lcom/pilotlab/rollereye/tensorflow/env/BorderedText;

    invoke-direct {v2, v0}, Lcom/pilotlab/rollereye/tensorflow/env/BorderedText;-><init>(F)V

    iput-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->borderedText:Lcom/pilotlab/rollereye/tensorflow/env/BorderedText;

    .line 2846
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->borderedText:Lcom/pilotlab/rollereye/tensorflow/env/BorderedText;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/tensorflow/env/BorderedText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2848
    new-instance v0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->tracker:Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;

    const/4 v0, 0x0

    .line 2855
    :try_start_25
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "detect_quant_normal.tflite"

    const-string v4, "file:///android_asset/labelmap_2.txt"

    const/16 v5, 0x12c

    .line 2854
    invoke-static {v2, v3, v4, v5, v1}, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->create(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier;

    move-result-object v1

    iput-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->detector:Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier;
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_35} :catch_9c

    .line 2872
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing at size :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewWidth:I

    iget v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->rgbFrameBitmap:Landroid/graphics/Bitmap;

    .line 2875
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->croppedBitmap:Landroid/graphics/Bitmap;

    .line 2877
    iget v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewWidth:I

    iget v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewHeight:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v5, 0x12c

    move v4, v5

    .line 2878
    invoke-static/range {v2 .. v7}, Lcom/pilotlab/rollereye/tensorflow/env/ImageUtils;->getTransformationMatrix(IIIIIZ)Landroid/graphics/Matrix;

    move-result-object v1

    iput-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->frameToCropTransform:Landroid/graphics/Matrix;

    .line 2883
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->cropToFrameTransform:Landroid/graphics/Matrix;

    .line 2884
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->frameToCropTransform:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->cropToFrameTransform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2886
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->trackingOverlay:Lcom/pilotlab/rollereye/tensorflow/customview/OverlayView;

    new-instance v2, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$42;

    invoke-direct {v2, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$42;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/tensorflow/customview/OverlayView;->addCallback(Lcom/pilotlab/rollereye/tensorflow/customview/OverlayView$DrawCallback;)V

    .line 2897
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->tracker:Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;

    iget v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewWidth:I

    iget v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewHeight:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->setFrameConfiguration(III)V

    return-void

    :catch_9c
    move-exception v1

    .line 2862
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 2863
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->TAG:Ljava/lang/String;

    const-string v2, "Exception initializing classifier!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Classifier could not be initialized"

    .line 2865
    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2867
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 1066
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onResume()V

    .line 1067
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1068
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 1070
    :cond_14
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->surfaceView:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->setRenderShowPic(Z)V

    .line 1072
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->checkStauts()V

    .line 1074
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->initControlCommand()V

    .line 1075
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->initPlayer()V

    .line 1076
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->startCamera()V

    .line 1077
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->initVoice()V

    .line 1078
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->startVoip()V

    .line 1079
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->checkWiFiDirect()V

    .line 1080
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->checkSystemVer()V

    .line 1081
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->checkShowBitRate()V

    .line 1082
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->checkShowBaseLine()V

    .line 1083
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->initTracking()V

    .line 1084
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->registerSensor()V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 4

    .line 2536
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2538
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_27

    .line 2539
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 2540
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    .line 2541
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x2

    aget p1, p1, v0

    :cond_27
    return-void
.end method

.method protected processImage()V
    .registers 10

    .line 2905
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->computingDetection:Z

    if-eqz v0, :cond_8

    .line 2906
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->readyForNextImage()V

    return-void

    :cond_8
    const/4 v0, 0x1

    .line 2910
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->computingDetection:Z

    .line 2912
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->rgbFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getRgbBytes()[I

    move-result-object v2

    const/4 v3, 0x0

    iget v7, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewWidth:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v8, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewHeight:I

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 2914
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->readyForNextImage()V

    .line 2916
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->croppedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2917
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->rgbFrameBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->frameToCropTransform:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 2924
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$43;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$43;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->runInBackgroundTensorflow(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected processImage_crop()V
    .registers 10

    .line 2974
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->computingDetection:Z

    if-eqz v0, :cond_8

    .line 2975
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->readyForNextImage()V

    return-void

    :cond_8
    const/4 v0, 0x1

    .line 2979
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->computingDetection:Z

    .line 2981
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->rgbFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getRgbBytes()[I

    move-result-object v2

    const/4 v3, 0x0

    iget v7, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewWidth:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v8, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewHeight:I

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 2983
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->readyForNextImage()V

    .line 2985
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->croppedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2986
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->rgbFrameBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->frameToCropTransform:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 2992
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$44;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$44;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->runInBackgroundTensorflow(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected readyForNextImage()V
    .registers 2

    .line 2656
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->postInferenceCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 2657
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->runInBackgroundStreamCover(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method protected declared-synchronized runInBackgroundStreamCover(Ljava/lang/Runnable;)V
    .registers 3

    monitor-enter p0

    .line 3150
    :try_start_1
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->handlerStreamCover:Landroid/os/Handler;

    if-eqz v0, :cond_a

    .line 3151
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->handlerStreamCover:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 3153
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized runInBackgroundTensorflow(Ljava/lang/Runnable;)V
    .registers 3

    monitor-enter p0

    .line 3144
    :try_start_1
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->handlerTensorflow:Landroid/os/Handler;

    if-eqz v0, :cond_a

    .line 3145
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->handlerTensorflow:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 3147
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d0020

    .line 324
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 2

    .line 739
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->setUpData(Landroid/os/Bundle;)V

    .line 740
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->initFirstGuide()V

    .line 741
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->initWayPoint()V

    .line 742
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->initAudioPermission()V

    .line 743
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->initBitRate()V

    .line 744
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->checkDownloadProgress()V

    .line 745
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->initSernsor()V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 329
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->initView()V

    .line 330
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->initEvent()V

    return-void
.end method

.method public startStopRecAnimator(Z)V
    .registers 4

    const v0, 0x7f020014

    .line 1707
    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 1709
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_rec_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    if-eqz p1, :cond_1a

    .line 1711
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_rec_ly:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1712
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_24

    .line 1714
    :cond_1a
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->activity_camera_rec_ly:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1715
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :goto_24
    return-void
.end method
