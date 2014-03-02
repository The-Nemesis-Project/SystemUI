.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_5_LEVEL_CONNECTION_STRENGTH:[I

.field static final DATA_6_LEVEL_CONNECTION_STRENGTH:[I

.field static final DATA_CONNECTION_STRENGTH:[I

.field static final PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

.field static final PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field static final WIMAX_CONNECTION_STRENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x6

    const/4 v1, 0x5

    .line 13
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 22
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

    .line 31
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

    .line 42
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    .line 51
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_5_LEVEL_CONNECTION_STRENGTH:[I

    .line 60
    new-array v0, v3, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_6_LEVEL_CONNECTION_STRENGTH:[I

    .line 71
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 78
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    return-void

    .line 13
    :array_0
    .array-data 0x4
        0x59t 0x0t 0xct 0x7ft
        0x5at 0x0t 0xct 0x7ft
        0x5bt 0x0t 0xct 0x7ft
        0x5ct 0x0t 0xct 0x7ft
        0x5dt 0x0t 0xct 0x7ft
    .end array-data

    .line 22
    :array_1
    .array-data 0x4
        0x59t 0x0t 0xct 0x7ft
        0x5at 0x0t 0xct 0x7ft
        0x5bt 0x0t 0xct 0x7ft
        0x5ct 0x0t 0xct 0x7ft
        0x76t 0x0t 0xct 0x7ft
        0x5dt 0x0t 0xct 0x7ft
    .end array-data

    .line 31
    :array_2
    .array-data 0x4
        0x59t 0x0t 0xct 0x7ft
        0x5at 0x0t 0xct 0x7ft
        0x5bt 0x0t 0xct 0x7ft
        0x5ct 0x0t 0xct 0x7ft
        0x76t 0x0t 0xct 0x7ft
        0x77t 0x0t 0xct 0x7ft
        0x5dt 0x0t 0xct 0x7ft
    .end array-data

    .line 42
    :array_3
    .array-data 0x4
        0x5et 0x0t 0xct 0x7ft
        0x5ft 0x0t 0xct 0x7ft
        0x60t 0x0t 0xct 0x7ft
        0x61t 0x0t 0xct 0x7ft
        0x64t 0x0t 0xct 0x7ft
    .end array-data

    .line 51
    :array_4
    .array-data 0x4
        0x5et 0x0t 0xct 0x7ft
        0x5ft 0x0t 0xct 0x7ft
        0x60t 0x0t 0xct 0x7ft
        0x61t 0x0t 0xct 0x7ft
        0x62t 0x0t 0xct 0x7ft
        0x64t 0x0t 0xct 0x7ft
    .end array-data

    .line 60
    :array_5
    .array-data 0x4
        0x5et 0x0t 0xct 0x7ft
        0x5ft 0x0t 0xct 0x7ft
        0x60t 0x0t 0xct 0x7ft
        0x61t 0x0t 0xct 0x7ft
        0x62t 0x0t 0xct 0x7ft
        0x63t 0x0t 0xct 0x7ft
        0x64t 0x0t 0xct 0x7ft
    .end array-data

    .line 71
    :array_6
    .array-data 0x4
        0x66t 0x0t 0xct 0x7ft
        0x67t 0x0t 0xct 0x7ft
        0x68t 0x0t 0xct 0x7ft
        0x69t 0x0t 0xct 0x7ft
        0x6at 0x0t 0xct 0x7ft
    .end array-data

    .line 78
    :array_7
    .array-data 0x4
        0x6bt 0x0t 0xct 0x7ft
        0x6ct 0x0t 0xct 0x7ft
        0x6dt 0x0t 0xct 0x7ft
        0x6et 0x0t 0xct 0x7ft
        0x6ft 0x0t 0xct 0x7ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
