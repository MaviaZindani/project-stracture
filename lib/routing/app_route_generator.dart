import 'package:deaf_app/screens/deaf/authentication/change_password_screen.dart';
import 'package:deaf_app/screens/deaf/authentication/confirm_number_screen.dart';
import 'package:deaf_app/screens/deaf/authentication/forgot_password_screen.dart';
import 'package:deaf_app/screens/deaf/authentication/sign_in_screen.dart';
import 'package:deaf_app/screens/deaf/authentication/sign_up_screen.dart';
import 'package:deaf_app/screens/deaf/authentication/sign_up_success_screen.dart';
import 'package:deaf_app/screens/deaf/home/connections/broadcast/broadcast_connection_screen.dart';
import 'package:deaf_app/screens/deaf/home/connections/broadcast/broadcast_with_time_limit.dart';
import 'package:deaf_app/screens/deaf/home/connections/broadcast/broadcast_with_time_limit_users.dart';
import 'package:deaf_app/screens/deaf/home/connections/close_connection/close_connection_screen.dart';
import 'package:deaf_app/screens/deaf/home/connections/connect_user/connect_user_screen.dart';
import 'package:deaf_app/screens/deaf/home/connections/connections_screen.dart';
import 'package:deaf_app/screens/deaf/home/connections/remove_user/remove_user_screen.dart';
import 'package:deaf_app/screens/deaf/home/emergency/emergency_main_screen.dart';
import 'package:deaf_app/screens/deaf/home/home_screen.dart';
import 'package:deaf_app/screens/deaf/home/resources/goverment_sources/goverment_sources_detail_screen.dart';
import 'package:deaf_app/screens/deaf/home/resources/goverment_sources/goverment_sources_main_screen.dart';
import 'package:deaf_app/screens/deaf/home/resources/jobs/jobs_detail_screen.dart';
import 'package:deaf_app/screens/deaf/home/resources/jobs/jobs_main_screen.dart';
import 'package:deaf_app/screens/deaf/home/resources/resources_screen.dart';
import 'package:deaf_app/screens/deaf/menu/menu_screen.dart';
import 'package:deaf_app/screens/splash/splash_screen.dart';
import 'package:deaf_app/screens/splash/welcome_screen.dart';
import 'package:flutter/material.dart';
import '../screens/deaf/home/activate listener/activate listener/activate_listener_screen.dart';
import '../screens/deaf/home/activate listener/activate listener/text_to_speech_screen.dart';
import '../screens/deaf/home/activate listener/activate_listener_screen.dart';
import '../screens/deaf/home/activate listener/show pairs/edit_pairs_screen.dart';
import '../screens/deaf/home/activate listener/show pairs/show_pairs_screen.dart';
import '../screens/deaf/home/activate listener/show users/chat_screen.dart';
import '../screens/deaf/home/activate listener/show users/show_users.dart';
import '../screens/deaf/home/create data/create sentence/add_audio_record_screen.dart';
import '../screens/deaf/home/create data/create sentence/add_sentence_screen.dart';
import '../screens/deaf/home/create data/create sentence/create_sentence_screen.dart';
import '../screens/deaf/home/create data/create_data_screen.dart';
import '../screens/deaf/home/create data/define sounds/create_word_screen.dart';
import '../screens/deaf/home/create data/emergency communication/emergency_communication_screen.dart';
import '../screens/deaf/home/create data/emergency communication/emergency_contact_add_detailsPscreen.dart';
import '../screens/deaf/home/create data/profile data/view_profile_data_screen.dart';
import '../screens/deaf/home/learn sign language/learn_sign_language_screen.dart';
import '../screens/listener/authentication/change_password_screen.dart';
import '../screens/listener/authentication/confirm_number_screen.dart';
import '../screens/listener/authentication/forgot_password_screen.dart';
import '../screens/listener/authentication/sign_in_screen.dart';
import '../screens/listener/authentication/sign_up_screen.dart';
import '../screens/listener/authentication/sign_up_success_screen.dart';
import '../screens/listener/home/activate listener/activate_listener_screen.dart';
import '../screens/listener/home/connections/broadcast/broadcast_connection_screen.dart';
import '../screens/listener/home/connections/broadcast/broadcast_with_time_limit.dart';
import '../screens/listener/home/connections/broadcast/broadcast_with_time_limit_users.dart';
import '../screens/listener/home/connections/connect_user/connect_user_screen.dart';
import '../screens/listener/home/connections/listener_connection_screen.dart';
import '../screens/listener/home/connections/close_connection/close_connection_screen.dart';
import '../screens/listener/home/connections/user communication/chat_screen.dart';
import '../screens/listener/home/connections/user communication/user_communication_screen.dart';
import '../screens/listener/home/home_screen.dart';
import '../screens/listener/home/learn sign language/listener_learn_sign_language_screen.dart';
import '../screens/listener/home/learn sign language/sign charts/listener_sign_charts_screen.dart';
import '../screens/listener/home/profile data settings/communication language/set_communication_screen.dart';
import '../screens/listener/home/profile data settings/listener_create_data_screen.dart';
import '../screens/listener/home/profile data settings/profile data/view_profile_data_screen.dart';
import '../screens/listener/home/resources/goverment_sources/listener_goverment_sources_detail_screen.dart';
import '../screens/listener/home/resources/goverment_sources/listener_goverment_sources_main_screen.dart';
import '../screens/listener/home/resources/jobs/listener_jobs_detail_screen.dart';
import '../screens/listener/home/resources/jobs/listener_jobs_main_screen.dart';
import '../screens/listener/home/resources/listener_resources_screen.dart';
import '../screens/listener/menu/menu_screen.dart';
import 'app_route_names.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // Splash
      case AppRoutesNames.initial:
        return _screenRoute(screen: const SplashScreen());
      case AppRoutesNames.welcome:
        return _screenRoute(screen: const WelcomeScreen());
      // Deaf Section
      // Auth
      case AppRoutesNames.signIn:
        return _screenRoute(screen: const SignInScreen());
      case AppRoutesNames.signUp:
        return _screenRoute(screen: const SignUpScreen());
      case AppRoutesNames.signUpSuccess:
        return _screenRoute(screen: const SignUpSuccessScreen());
      case AppRoutesNames.forgortPassword:
        return _screenRoute(screen: const ForgotPasswordScreen());
      case AppRoutesNames.confirmNumber:
        return _screenRoute(screen: const ConfirmNumberScreen());
      case AppRoutesNames.changePassword:
        return _screenRoute(screen: const ChangePasswordScreen());
      // Home and Menu
      case AppRoutesNames.homeScreen:
        return _screenRoute(screen: const HomeScreen());
      case AppRoutesNames.menuScreen:
        return _screenRoute(screen: const MenuScreen());
      // Resources Section
      case AppRoutesNames.resourcesScreen:
        return _screenRoute(screen: const ResourcesScreen());
      case AppRoutesNames.govermentSourcesScreen:
        return _screenRoute(screen: const GovermentSourcesMainScreen());
      case AppRoutesNames.govermentSourcesDetailScreen:
        return _screenRoute(screen: const GovermentSourcesDetailScreen());
      case AppRoutesNames.jobsMainScreen:
        return _screenRoute(screen: const JobMainScreen());
      case AppRoutesNames.jobsDetailScreen:
        return _screenRoute(screen: const JobDetailScreen());
      case AppRoutesNames.connectionsScreen:
        return _screenRoute(screen: const ConnectionsScreen());
      case AppRoutesNames.broadCastConnectionsScreen:
        return _screenRoute(screen: const BroadcastConnectionScreen());
      case AppRoutesNames.broadCastWithTimeLimitScreen:
        return _screenRoute(screen: const BroadCastWithTimeLimitScreen());
      case AppRoutesNames.broadCastWithTimeLimitUsersScreen:
        return _screenRoute(screen: const BroadCastWithTimeLimitUsersScreen());
      case AppRoutesNames.connectUserScreen:
        return _screenRoute(screen: const ConnectUserScreen());
      case AppRoutesNames.removeUserScreen:
        return _screenRoute(screen: const RemoveUserScreen());
      case AppRoutesNames.closeConnectionScreen:
        return _screenRoute(screen: const CloseConnectionScreen());
      case AppRoutesNames.activateListenerMainScreen:
        return _screenRoute(screen: const ActivateListenerMainScreen());
      case AppRoutesNames.showUsersScreen:
        return _screenRoute(screen: const ShowUsersScreen());
      case AppRoutesNames.chatScreen:
        return _screenRoute(screen: const ChatScreen());
      case AppRoutesNames.activateListenerScreen:
        return _screenRoute(screen: const ActivateListenerScreen());
      case AppRoutesNames.textToSpeechScreen:
        return _screenRoute(screen: const TextToSpeechScreen());
      case AppRoutesNames.showPairsScreen:
        return _screenRoute(screen: const ShowPairsScreen());
      case AppRoutesNames.editPairsScreen:
        return _screenRoute(screen: const EditPairsScreen());
      case AppRoutesNames.emergencyMainScreen:
        return _screenRoute(screen: const EmergencyMainScreen());
      case AppRoutesNames.createDataMainScreen:
        return _screenRoute(screen: const CreateDataMainScreen());
      case AppRoutesNames.createSentenceScreen:
        return _screenRoute(screen: const CreateSentenceScreen());
      case AppRoutesNames.addSentenceScreen:
        return _screenRoute(screen: const AddSentenceScreen());
      case AppRoutesNames.addAudioRecordScreen:
        return _screenRoute(screen: const AddAudioRecordScreen());
      case AppRoutesNames.viewProfileDataScreen:
        return _screenRoute(screen: const ViewProfileDataScreen());
      case AppRoutesNames.createWordScreen:
        return _screenRoute(screen: const CreateWordScreen());
      case AppRoutesNames.emergencyCommunicationScreen:
        return _screenRoute(screen: const EmergencyCommunicationScreen());
      case AppRoutesNames.emergencyContactAddDetailspscreen:
        return _screenRoute(screen: const EmergencyContactAddDetailspscreen());
      case AppRoutesNames.learnSignLanguageScreen:
        return _screenRoute(screen: const LearnSignLanguageScreen());
      // Listener Section
      case AppRoutesNames.listenerSignUpSuccessScreen:
        return _screenRoute(screen: const ListenerSignUpSuccessScreen());
      case AppRoutesNames.listenerSignUpScreen:
        return _screenRoute(screen: const ListenerSignUpScreen());
      case AppRoutesNames.listenerSignInScreen:
        return _screenRoute(screen: const ListenerSignInScreen());
      case AppRoutesNames.listenerForgotPasswordScreen:
        return _screenRoute(screen: const ListenerForgotPasswordScreen());
      case AppRoutesNames.listenerConfirmNumberScreen:
        return _screenRoute(screen: const ListenerConfirmNumberScreen());
      case AppRoutesNames.listenerChangePasswordScreen:
        return _screenRoute(screen: const ListenerChangePasswordScreen());
      case AppRoutesNames.listenerHomeScreen:
        return _screenRoute(screen: const ListenerHomeScreen());
      case AppRoutesNames.listenerMenuScreen:
        return _screenRoute(screen: const ListenerMenuScreen());
      case AppRoutesNames.listenerConnectionsScreen:
        return _screenRoute(screen: const ListenerConnectionsScreen());
      case AppRoutesNames.listenerBroadcastConnectionScreen:
        return _screenRoute(screen: const ListenerBroadcastConnectionScreen());
      case AppRoutesNames.listenerBroadCastWithTimeLimitUsersScreen:
        return _screenRoute(
            screen: const ListenerBroadCastWithTimeLimitUsersScreen());
      case AppRoutesNames.listenerBroadCastWithTimeLimitScreen:
        return _screenRoute(
            screen: const ListenerBroadCastWithTimeLimitScreen());
      case AppRoutesNames.listenerConnectUserScreen:
        return _screenRoute(screen: const ListenerConnectUserScreen());
      case AppRoutesNames.listenerCloseConnectionScreen:
        return _screenRoute(screen: const ListenerCloseConnectionScreen());
      case AppRoutesNames.userCommunictionScreen:
        return _screenRoute(screen: const UserCommunictionScreen());
      case AppRoutesNames.listenerChatScreen:
        return _screenRoute(screen: const ListenerChatScreen());
      case AppRoutesNames.listenerProfileDataSettingsScreen:
        return _screenRoute(screen: const ListenerProfileDataSettingsScreen());
      case AppRoutesNames.listenerViewProfileDataScreen:
        return _screenRoute(screen: const ListenerViewProfileDataScreen());
      case AppRoutesNames.setCommunicationScreen:
        return _screenRoute(screen: const SetCommunicationScreen());
      case AppRoutesNames.listenerLearnSignLanguageScreen:
        return _screenRoute(screen: const ListenerLearnSignLanguageScreen());
      case AppRoutesNames.listenerLearnSignChartsScreen:
        return _screenRoute(screen: const ListenerLearnSignChartsScreen());
      case AppRoutesNames.listenerGovermentSourcesMainScreen:
        return _screenRoute(screen: const ListenerGovermentSourcesMainScreen());
      case AppRoutesNames.listenerGovermentSourcesDetailScreen:
        return _screenRoute(screen: const ListenerGovermentSourcesDetailScreen());
      case AppRoutesNames.listenerJobDetailScreen:
        return _screenRoute(screen: const ListenerJobDetailScreen());  
      case AppRoutesNames.listenerJobMainScreen:
        return _screenRoute(screen: const ListenerJobMainScreen());
      case AppRoutesNames.listenerResourcesScreen:
        return _screenRoute(screen: const ListenerResourcesScreen());
      case AppRoutesNames.listenerActivateListenerScreen:
        return _screenRoute(screen: const ListenerActivateListenerScreen());          
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _screenRoute({Widget? screen}) {
    return MaterialPageRoute(builder: (context) => screen!);
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        body: Center(
          child: Text('Something went wrong',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'OpenSans',
                  color: Color(0xff2D3139))),
        ),
      );
    });
  }
}
