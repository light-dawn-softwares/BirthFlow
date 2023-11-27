import 'package:birthflow/src/core/vpp/data/models/vpp_local.dart';
import 'package:floor/floor.dart';

@dao
abstract class VppDao {

 @Query('SELECT * FROM Vvp WHERE partographId = :idVpp')
 Future<List<VppDto>?> findById(int partographId);

 @insert
 Future<void> insertVpp(VppDto vvp);

 @update
 Future<void> updateVVP(VppDto vvp);

 @delete
 Future<void> deleteVVP(VppDto vvp);
}
