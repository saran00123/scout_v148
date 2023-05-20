.class public final Lcom/google/android/gms/maps/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final MapAttrs:[I

.field public static final MapAttrs_ambientEnabled:I = 0x0

.field public static final MapAttrs_cameraBearing:I = 0x1

.field public static final MapAttrs_cameraMaxZoomPreference:I = 0x2

.field public static final MapAttrs_cameraMinZoomPreference:I = 0x3

.field public static final MapAttrs_cameraTargetLat:I = 0x4

.field public static final MapAttrs_cameraTargetLng:I = 0x5

.field public static final MapAttrs_cameraTilt:I = 0x6

.field public static final MapAttrs_cameraZoom:I = 0x7

.field public static final MapAttrs_latLngBoundsNorthEastLatitude:I = 0x8

.field public static final MapAttrs_latLngBoundsNorthEastLongitude:I = 0x9

.field public static final MapAttrs_latLngBoundsSouthWestLatitude:I = 0xa

.field public static final MapAttrs_latLngBoundsSouthWestLongitude:I = 0xb

.field public static final MapAttrs_liteMode:I = 0xc

.field public static final MapAttrs_mapType:I = 0xd

.field public static final MapAttrs_uiCompass:I = 0xe

.field public static final MapAttrs_uiMapToolbar:I = 0xf

.field public static final MapAttrs_uiRotateGestures:I = 0x10

.field public static final MapAttrs_uiScrollGestures:I = 0x11

.field public static final MapAttrs_uiScrollGesturesDuringRotateOrZoom:I = 0x12

.field public static final MapAttrs_uiTiltGestures:I = 0x13

.field public static final MapAttrs_uiZoomControls:I = 0x14

.field public static final MapAttrs_uiZoomGestures:I = 0x15

.field public static final MapAttrs_useViewLifecycle:I = 0x16

.field public static final MapAttrs_zOrderOnTop:I = 0x17


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x18

    .line 52
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/maps/R$styleable;->MapAttrs:[I

    return-void

    :array_a
    .array-data 4
        0x7f040033
        0x7f04008e
        0x7f04008f
        0x7f040090
        0x7f040091
        0x7f040092
        0x7f040093
        0x7f040094
        0x7f040212
        0x7f040213
        0x7f040214
        0x7f040215
        0x7f04027a
        0x7f04027d
        0x7f04045d
        0x7f04045e
        0x7f04045f
        0x7f040460
        0x7f040461
        0x7f040462
        0x7f040463
        0x7f040464
        0x7f040469
        0x7f040486
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
